resource "dynatrace_document" "Scan_for_security_groups" {
  name      = "Scan for security groups"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2781.0
          - id: dynatrace.slack
            version: ^3.3.1
          - id: dynatrace.microsoft.azure.connector
            version: ^1.0.3
      inputs:
        - type: connection
          schema: app:dynatrace.slack:connection
          targets:
            - tasks.send_message_1.connection
        - type: connection
          schema: builtin:hyperscaler-authentication.connections.azure
          connectionFilter: value.federatedIdentityCredential.consumers contains 'APP:dynatrace.microsoft.azure.connector'
          targets:
            - tasks.network_security_groups_list_all.connection
      trackingId: container-find-security-groups
    workflow:
      title: Scan for security groups with ports open to internet
      description: Identifies and reports Azure security groups that have ports open to the entire internet.
      schemaVersion: 4
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |-
        # Quick setup
        1. Grant Workflow permissions: Go to Workflows > Settings > Authorization settings and enable required permissions for running actions and reading Azure resources. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create an Azure connection: Go to Settings > Connections > [Azure](/ui/apps/dynatrace.settings/settings/dynatrace.microsoft.azure.connector) > **+ Connection** with permissions to list Network Security Groups. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/azure/azure-workflows-setup
        3. Configure inputs: Provide the Subscription ID for the Azure subscription you want to scan.
        4. (Optional) Set up Slack connection: To receive notifications, configure a Slack connection and provide the target channel ID.
        5. Test and tune: Run once manually to validate end-to-end.
    
        # Trigger configuration
        No trigger is active by default. Set up a schedule (for example, daily or weekly) or run on-demand during security audits.
    
        # About the analysis logic
        The workflow lists all Network Security Groups in a subscription, then runs a JavaScript analysis step that:
        - Inspects each inbound allow rule for internet-facing source prefixes (`0.0.0.0/0`, `::/0`, `*`, `any`).
        - Categories exposed ports by risk: **High** (SSH 22, RDP 3389), **Medium** (database ports), **Low** (HTTP/HTTPS).
        - Enriches results with Dynatrace region entity data for correlation.
        - Returns only non-compliant security groups with offending rule details.
    
        # Additional configuration and tips
        - Governance: Combine with Azure Policy to enforce compliant NSG rules automatically.
        - Notifications: The Slack message includes a direct link to each NSG in the Azure Portal for quick remediation.
        - Extend: Add downstream actions to automatically remove or restrict offending rules.
        - Learn more: [Azure NSG security documentation](https://learn.microsoft.com/en-us/azure/virtual-network/network-security-groups-overview)
      tasks:
        send_message_1:
          name: send_message_1
          input:
            channel: ''
            message: |
              {
              "blocks": [
                {
                  "type": "header",
                  "text": {
                    "type": "plain_text",
                    "text": "⚠️ Security Groups Exposed to Internet",
                    "emoji": true
                  }
                },
                {
                  "type": "section",
                  "text": {
                    "type": "mrkdwn",
                    "text": "*{{ result("network_security_groups_list_all") | length }}* security group(s) with issues"
                  }
                },
                {
                  "type": "divider"
                }
                {% for sg in result("network_security_groups_list_all") %}
                ,
                {
                  "type": "section",
                  "text": {
                    "type": "mrkdwn",
                    "text": "*{{ sg.name }}* (`{{ sg.id }}`)\nLocation: {{ sg.location }}"
                  }
                },
                {
                  "type": "actions",
                  "elements": [
                    {
                      "type": "button",
                      "text": {
                        "type": "plain_text",
                        "text": "View in Azure Portal",
                        "emoji": true
                      },
                      "url": "https://portal.azure.com/#resource{{ sg.id }}",
                      "style": "primary"
                    }
                  ]
                }
                {% if not loop.last %}
                ,
                {
                  "type": "divider"
                }
                {% endif %}
                {% endfor %}
              ]
              }
            reaction: []
            connection: ''
            channelType: id
            executionDate: '{{ execution().started_at }}'
            appendToThread: false
            replyBroadcast: false
            selectedRequestType: 0
            attachmentToggleValue: none
          action: dynatrace.slack:slack-send-message
          active: true
          position:
            x: 0
            y: 3
          conditions:
            states:
              find_network_groups: OK
          description: Send a message to a Slack workspace
          predecessors:
            - find_network_groups
        find_network_groups:
          name: find_network_groups
          input:
            script: |
              import { execution } from "@dynatrace-sdk/automation-utils";
              import { queryExecutionClient } from "@dynatrace-sdk/client-query";
    
              const INTERNET_TOKENS = new Set(['0.0.0.0/0', '::/0', 'internet', '*', 'any']);
              const HIGH_RISK_PORTS = new Set(['22','3389']); // SSH, RDP
              const MEDIUM_RISK_PORTS = new Set(['1433','3306','1521','27017','6379']); // DBs
              const LOW_RISK_PORTS = new Set(['80','443']);
    
              function normalizeArrayField(rule, singleField, arrayField) {
                const out = [];
                const single = rule[singleField] ?? (rule.properties && rule.properties[singleField]);
                const arr = rule[arrayField] ?? (rule.properties && rule.properties[arrayField]);
                if (typeof single === 'string' && single.trim() !== '') out.push(single.trim());
                if (Array.isArray(arr) && arr.length) {
                  for (const v of arr) if (typeof v === 'string' && v.trim() !== '') out.push(v.trim());
                }
                return [...new Set(out)];
              }
    
              function ruleAllowsInternet(rule) {
                const sources = normalizeArrayField(rule, 'sourceAddressPrefix', 'sourceAddressPrefixes');
                if (sources.length === 0) return false;
                for (const s of sources) {
                  const low = String(s).toLowerCase();
                  if (INTERNET_TOKENS.has(low) || low.includes('0.0.0.0/0') || low.includes('::/0')) {
                    return true;
                  }
                }
                return false;
              }
    
              function getDestPortSpecs(rule) {
                const single = rule.destinationPortRange ?? (rule.properties && rule.properties.destinationPortRange);
                const arr = rule.destinationPortRanges ?? (rule.properties && rule.properties.destinationPortRanges) ?? [];
                let specs = [];
                if (typeof single === 'string' && single.trim() !== '') specs = specs.concat(single.split(',').map(s => s.trim()).filter(Boolean));
                if (Array.isArray(arr)) {
                  for (const it of arr) if (typeof it === 'string' && it.trim()) specs = specs.concat(it.split(',').map(s => s.trim()).filter(Boolean));
                }
                if (specs.length === 0) specs = ['*'];
                return [...new Set(specs)];
              }
    
              function portsContainAll(specs) {
                for (const s of specs) {
                  if (!s) continue;
                  if (s === '*' || s === '0-65535') return true;
                  const m = s.match(/^(\d+)\s*-\s*(\d+)$/);
                  if (m && parseInt(m[1],10) === 0 && parseInt(m[2],10) === 65535) return true;
                }
                return false;
              }
    
              function findRiskyPorts(specs) {
                const found = { high: [], medium: [], low: [] };
                for (const s of specs) {
                  if (!s) continue;
                  // only consider single port matches (and ranges that include known ports)
                  if (/^\d+$/.test(s)) {
                    if (HIGH_RISK_PORTS.has(s)) found.high.push(s);
                    else if (MEDIUM_RISK_PORTS.has(s)) found.medium.push(s);
                    else if (LOW_RISK_PORTS.has(s)) found.low.push(s);
                  } else {
                    // range handling: check whether any known risky port falls into the range
                    const m = s.match(/^(\d+)\s*-\s*(\d+)$/);
                    if (m) {
                      const a = parseInt(m[1],10), b = parseInt(m[2],10);
                      for (const p of HIGH_RISK_PORTS) { const pn = parseInt(p,10); if (pn>=a && pn<=b) found.high.push(p); }
                      for (const p of MEDIUM_RISK_PORTS) { const pn = parseInt(p,10); if (pn>=a && pn<=b) found.medium.push(p); }
                      for (const p of LOW_RISK_PORTS) { const pn = parseInt(p,10); if (pn>=a && pn<=b) found.low.push(p); }
                    }
                  }
                }
                // dedupe arrays
                found.high = [...new Set(found.high)];
                found.medium = [...new Set(found.medium)];
                found.low = [...new Set(found.low)];
                return found;
              }
    
              function computeSeverity(allOpen, risky) {
                if (allOpen) return 'High';
                if (risky.high.length) return 'High';
                if (risky.medium.length) return 'Medium';
                if (risky.low.length) return 'Low';
                return 'Info';
              }
    
              export default async function () {
                const ex = await execution();
                // adjust the name if your Azure datasource uses a different key
                const result = await ex.result("network_security_groups_list_all");
                const noncompliantSecurityGroups = [];
    
                // normalize input to array: supports single, array, or { value: [...] }
                const nsgs = Array.isArray(result) ? result : (Array.isArray(result?.value) ? result.value : [result]);
    
                for (const nsg of nsgs) {
                  // Log NSG identification
                  console.log(`Checking NSG: $${nsg.name || nsg.id}`);
    
                  // get azure region / location
                  const region = nsg.location || (nsg.properties && nsg.properties.location) || null;
                  nsg.region = region;
    
                  // Query Dynatrace for region-related entities (adapt query to your Dynatrace model if needed)
                  try {
                    const dtRegionIds = [];
                    // The query below is generic — adjust the fetch target (dt.entity...) if your Dynatrace environment
                    // has a specific entity type for Azure regions/availability zones.
                    const queryResult = await queryExecutionClient.queryExecute({
                      body: {
                        query: `fetch dt.entity.AZURE_REGION
                                | filter matchesPhrase(entity.name, "$${region}*")
                                | fields id`,
                        requestTimeoutMilliseconds: 45000,
                      },
                    });
    
                    if (queryResult?.result?.records) {
                      for (const record of queryResult.result.records) {
                        if (record?.id) dtRegionIds.push(record.id);
                      }
                    }
                    nsg.dt_region_ids = [...new Set(dtRegionIds)];
                  } catch (error) {
                    console.warn(`Failed to fetch Dynatrace region IDs for $${region}: $${error}`);
                    nsg.dt_region_ids = [];
                  }
    
                  // Collect rules (custom + default) — match the field names from az/Resource Graph
                  const customs = Array.isArray(nsg.securityRules) ? nsg.securityRules : (Array.isArray(nsg.properties?.securityRules) ? nsg.properties.securityRules : []);
                  const defaults = Array.isArray(nsg.defaultSecurityRules) ? nsg.defaultSecurityRules : (Array.isArray(nsg.properties?.defaultSecurityRules) ? nsg.properties.defaultSecurityRules : []);
                  const rules = [...customs.map(r => ({...r, _origin: 'custom'})), ...defaults.map(r => ({...r, _origin: 'default'}))];
    
                  // Check inbound allow rules for internet exposure
                  let hasPublicAccess = false;
                  const offendingRules = [];
    
                  for (const rule of rules) {
                    const direction = (rule.direction || rule.properties?.direction || '').toString().toLowerCase();
                    const access = (rule.access || rule.properties?.access || '').toString().toLowerCase();
    
                    if (direction !== 'inbound' || access !== 'allow') continue;
    
                    // If rule uses ASGs instead of prefixes, those are not raw internet — we skip them as Internet.
                    const sources = normalizeArrayField(rule, 'sourceAddressPrefix', 'sourceAddressPrefixes');
                    if (ruleAllowsInternet(rule)) {
                      // This rule allows from Internet
                      const destSpecs = getDestPortSpecs(rule);
                      const allPortsOpen = portsContainAll(destSpecs);
                      const risky = findRiskyPorts(destSpecs);
                      const severity = computeSeverity(allPortsOpen, risky);
    
                      offendingRules.push({
                        ruleName: rule.name,
                        origin: rule._origin || null,
                        sourcePrefixes: sources,
                        destinationPorts: destSpecs,
                        allPortsOpen,
                        riskyPorts: risky,
                        severity,
                        protocol: rule.protocol || rule.properties?.protocol || '*',
                        priority: rule.priority || rule.properties?.priority || null,
                        description: rule.description || rule.properties?.description || ''
                      });
    
                      hasPublicAccess = true;
                      break;
                    }
                  }
    
                  if (hasPublicAccess) {
                    // attach offendingRules for context and push the NSG (enriched) to the noncompliant list
                    nsg.offendingRules = offendingRules;
                    noncompliantSecurityGroups.push(nsg);
                    console.log(`  ⚠️ NSG $${nsg.name || nsg.id} has internet-exposed rule(s):`, offendingRules.map(r => r.ruleName));
                  }
                }
    
                console.log(`Found $${noncompliantSecurityGroups.length} NSG(s) with public access`);
                return noncompliantSecurityGroups;
              }
    
          action: dynatrace.automations:run-javascript
          position:
            x: 0
            y: 2
          conditions:
            states:
              network_security_groups_list_all: OK
          description: Run custom JavaScript code.
          predecessors:
            - network_security_groups_list_all
        network_security_groups_list_all:
          name: network_security_groups_list_all
          input:
            connection: ''
            subscriptionId: 232d5d7b-f9905cd8906743
            resourceGroupName: ''
          action: dynatrace.microsoft.azure.connector:arm-network-network-security-groups-list
          position:
            x: 0
            y: 1
          description: Gets all network security groups in a subscription
          predecessors: []
    EOT
  custom_id = "dynatrace.microsoft.azure.connector.container-find-security-groups-with-open-ports"
  # private = false
}
