resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_16" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "name": "configureLogForwardingForCloud",
            "parameters": [
              {
                "name": "cloudProvider",
                "value": "aws"
              }
            ]
          }
        ],
        "category": "Logs",
        "description": "Logs are a critical signal for Observability and Security use cases. This rule looks for AWS integration for your account and detects if any logs are ingested. The recommended remediation action is set up AWS log ingest to ensure there are no blind spots. There are multiple ways to ingest resource and activity logs from AWS.",
        "environmentScope": true,
        "id": "unmonitored-aws-logs-0",
        "priority": "CRITICAL",
        "query": "fetch dt.entity.aws_credentials, from:-15m\n       | summarize count=count(), by:{awsAccountId}\n       | fields `Account ID`=awsAccountId, id=awsAccountId\n       | lookup [ fetch logs | filter cloud.provider == \"aws\" | summarize count=count(), by:{aws.account.id} | fields aws.account.id, hasLogs = count \u003e 0 ],\n                  sourceField:`Account ID`, lookupField: aws.account.id\n       | fields `Account ID`, id, compliant=lookup.hasLogs\n       ",
        "title": "Unmonitored AWS logs",
        "zeroRated": true
      },
      "settings": {
        "muted": false
      }
    })
}
