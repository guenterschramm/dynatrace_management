resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_12" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "instantAction": true,
            "name": "configureLogForwardingForCloud",
            "parameters": [
              {
                "name": "cloudProvider",
                "value": "azure"
              }
            ]
          }
        ],
        "category": "Logs",
        "description": "Logs are a critical signal for Observability and Security use cases. This rule looks for Microsoft Azure integration for your account and detects if any logs are ingested. The recommended remediation action is set up Azure resource and activity log ingest to ensure there are no blind spots.",
        "environmentScope": true,
        "id": "unmonitored-azure-logs-0",
        "priority": "CRITICAL",
        "query": "fetch dt.entity.azure_subscription, from:-15m\n       | summarize count=count(), by:{azureSubscriptionUuid}\n       | fields `Azure subscription ID`=upper(azureSubscriptionUuid),id=azureSubscriptionUuid\n       | lookup [ fetch logs | fields azure.subscription=upper(azure.subscription), cloud.provider | filter cloud.provider == \"Azure\" OR cloud.provider == \"azure\" | summarize count=count(), by:{azure.subscription} | fields azure.subscription, hasLogs = count \u003e 0 ],\n                  sourceField:`Azure subscription ID`, lookupField: azure.subscription\n       | fields `Azure subscription ID`, id, compliant=lookup.hasLogs\n       ",
        "title": "Unmonitored Azure logs",
        "zeroRated": true
      },
      "settings": {
        "muted": false
      }
    })
}
