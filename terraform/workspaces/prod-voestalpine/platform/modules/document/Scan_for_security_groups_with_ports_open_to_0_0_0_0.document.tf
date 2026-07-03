resource "dynatrace_document" "Scan_for_security_groups_with_ports_open_to_0_0_0_0" {
  name      = "Scan for security groups with ports open to 0.0.0.0/0"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2632.0
          - id: dynatrace.aws.connector
            version: ^2.1.4
          - id: dynatrace.slack
            version: ^3.2.4
      inputs:
        - type: connection
          schema: app:dynatrace.slack:connection
          targets:
            - tasks.send_alert.connection
        - type: connection
          schema: builtin:hyperscaler-authentication.connections.aws
          connectionFilter: value.awsWebIdentity.consumers contains 'APP:dynatrace.aws.connector'
          targets:
            - tasks.ec2_describe_security_groups.connection
      trackingId: scan-security-groups-open-ports
    
    workflow:
      title: Scan for security groups with ports open to 0.0.0.0/0
      description: Identifies and reports AWS security groups that have ports open to the entire internet.
      schemaVersion: 3
      trigger: {}
      result: '{{ result("loop_though_result") }}'
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |-
        # Quick setup
        1. Grant Workflow permissions: Go to Workflows > Settings > Authorization settings and enable required permissions for running actions and reading events. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create an AWS connection: Go to Settings > Connections > [AWS](/ui/apps/dynatrace.settings/settings/dynatrace.aws.connector) > **+ Connection** and create a connection with permissions to describe security groups (ec2:DescribeSecurityGroups). See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/aws/aws-workflows-setup
        3. Create a Slack connection in Dynatrace: Go to Settings > Connections > [Slack](/ui/apps/dynatrace.settings/settings/dynatrace.slack) > **+ Connection** and follow the setup in https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/slack.
        4. Allow external requests: Go to Settings > General > [External requests](/ui/apps/dynatrace.settings/settings/external-requests) and allow Slack API domains.
        5. Choose a target Slack channel within `send_alert` action.
        6. Test and tune: Run once manually, verify results, and adjust filters or the Slack message format.
    
        # Trigger configuration
        No trigger is active by default. Set up a schedule (for example, daily) or run on-demand during audits and reviews.
    
        # About the scan and query
        The workflow calls EC2 Describe security groups action and then processes results in a JavaScript step to flag ingress rules open to 0.0.0.0/0. It also looks up Dynatrace AWS availability zone entities for correlation.
        Consider:
        - Include IPv6 exposure by checking ::/0 as well.
        - Restrict by VPC, tags, or regions to reduce noise.
        - Limit port ranges or protocols to what matters (for example, TCP 22/3389).
        to get a more tailored results for your use case.
    
        # Additional configuration and tips
        - Routing: Send high-risk findings to a dedicated Slack channel.
        - Noise reduction: Exclude known bastion groups or maintain an allowlist.
      tasks:
        send_alert:
          name: send_alert
          description: Send an alert containing the found security groups
          action: dynatrace.slack:slack-send-message
          position:
            x: 0
            y: 3
          predecessors:
            - find_security_groups
          conditions:
            states:
              find_security_groups: OK
          input:
            channelType: id
            connection: ''
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
                      "text": "*{{ result("find_security_groups") | length }}* security group(s) with ports open to `0.0.0.0/0`"
                    }
                  },
                  {
                    "type": "divider"
                  }
                  {% for sg in result("find_security_groups") %}
                  ,
                  {
                    "type": "section",
                    "text": {
                      "type": "mrkdwn",
                      "text": "*{{ sg.GroupName }}* (`{{ sg.GroupId }}`)\nLocation: {{ sg.region }}"
                    }
                  },
                  {
                    "type": "section",
                    "text": {
                      "type": "mrkdwn",
                      "text": "*Open Ports:*\n{%- for rule in sg.IpPermissions -%}
                        {%- for ipRange in rule.IpRanges -%}
                          {%- if ipRange.CidrIp == '0.0.0.0/0' -%}
                            • {{ rule.IpProtocol | upper }}
                            {%- if rule.FromPort %} {{ rule.FromPort }}
                              {%- if rule.ToPort != rule.FromPort %}-{{ rule.ToPort }}{% endif -%}
                            {%- endif %}\n
                          {%- endif -%}
                        {%- endfor -%}
                      {%- endfor -%}"
                    }
                  },
                  {
                    "type": "actions",
                    "elements": [
                      {
                        "type": "button",
                        "text": {
                          "type": "plain_text",
                          "text": "View in AWS Console",
                          "emoji": true
                        },
                        "url": "https://{{ sg.region }}.console.aws.amazon.com/ec2/home?region={{ sg.region }}#SecurityGroup:groupId={{ sg.GroupId }}",
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
            executionDate: '{{ execution().started_at }}'
            appendToThread: false
            replyBroadcast: false
            selectedRequestType: 0
            attachmentToggleValue: none
        find_security_groups:
          name: find_security_groups
          description: Run custom JavaScript code.
          action: dynatrace.automations:run-javascript
          active: true
          timeout: 9999
          position:
            x: 0
            y: 2
          predecessors:
            - ec2_describe_security_groups
          conditions:
            states:
              ec2_describe_security_groups: OK
          retry:
            count: 5
            delay: 30
            failedLoopIterationsOnly: true
          input:
            script: |
              import { execution } from "@dynatrace-sdk/automation-utils";
              import { queryExecutionClient } from "@dynatrace-sdk/client-query";
    
              export default async function () {
                const ex = await execution();
                const result = await ex.result("ec2_describe_security_groups");
                const noncompliantSecurityGroups = [];
    
                // Process each security group to find those with ports open to the internet
                for (const sg of result.SecurityGroups) {
                  console.log(`Checking Security Group: $${sg.GroupName} ($${sg.GroupId})`);
    
                  // Extract AWS region from the security group ARN
                  // ARN format: arn:aws:ec2:region:account-id:security-group/sg-id
                  const arnParts = sg.SecurityGroupArn.split(':');
                  const region = arnParts[3]; // Region is at index 3
                  sg.region = region;
    
                  // Query Dynatrace to get corresponding availability zone entity IDs
                  // This allows correlation with Dynatrace monitoring data
                  try {
                    const dtRegionIds = [];
                    const queryResult = await queryExecutionClient.queryExecute({
                      body: {
                        query: `fetch dt.entity.aws_availability_zone
                                | filter matchesPhrase(entity.name, "$${region}*")
                                | fields id`,
                        requestTimeoutMilliseconds: 45000,
                      },
                    });
    
                    // Collect all unique Dynatrace region IDs
                    for (const record of queryResult.result.records) {
                      dtRegionIds.push(record.id);
                    }
                    sg.dt_region_ids = [...new Set(dtRegionIds)];
                  } catch (error) {
                    console.warn(`Failed to fetch Dynatrace region IDs for $${region}: $${error}`);
                    sg.dt_region_ids = [];
                  }
    
                  // Check if this security group has any rules open to the internet (0.0.0.0/0)
                  let hasPublicAccess = false;
                  for (const ingressRule of sg.IpPermissions) {
                    for (const ipRange of ingressRule.IpRanges) {
                      console.log(`  IP Range: $${ipRange.CidrIp}`);
                      if (ipRange.CidrIp === "0.0.0.0/0") {
                        hasPublicAccess = true;
                        break; // Found public access, no need to check more ranges
                      }
                    }
                    if (hasPublicAccess) {
                      break; // Exit outer loop if already found
                    }
                  }
    
                  // Add to non-compliant list only once per security group
                  if (hasPublicAccess) {
                    noncompliantSecurityGroups.push(sg);
                    console.log(`  ⚠️ Security group $${sg.GroupId} has public access!`);
                  }
                }
    
                console.log(`Found $${noncompliantSecurityGroups.length} security group(s) with public access`);
                return noncompliantSecurityGroups;
              }
    
        ec2_describe_security_groups:
          name: ec2_describe_security_groups
          description: Describes the specified security groups or all of your security groups
          action: dynatrace.aws.connector:ec2-describe-security-groups
          active: true
          position:
            x: 0
            y: 1
          predecessors: []
          input:
            schema: builtin:hyperscaler-authentication.connections.aws
            connection: ''
    EOT
  custom_id = "dynatrace.aws.connector.scan-for-security-groups-with-open-ports"
  # private = false
}
