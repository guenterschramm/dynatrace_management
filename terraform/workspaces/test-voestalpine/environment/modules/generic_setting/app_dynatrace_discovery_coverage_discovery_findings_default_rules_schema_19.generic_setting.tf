resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_19" {
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
                "value": "gcp"
              }
            ]
          }
        ],
        "category": "Logs",
        "description": "Logs are a critical signal for Observability and Security use cases. This rule looks for Google Cloud Platform integration for your account and detects if any logs are ingested. The recommended remediation action is set up GCP resource and audit log ingest to ensure there are no blind spots.",
        "environmentScope": true,
        "id": "unmonitored-gcp-logs-0",
        "priority": "CRITICAL",
        "query": "fetch `dt.entity.cloud:gcp:project`, from:-15m\n       | summarize count=count(), by:{entity.name}\n       | fields `Google Cloud project`=entity.name,id=entity.name\n       | lookup [ fetch logs | fields gcp.project.id, cloud.provider | filter cloud.provider == \"gcp\" | summarize count=count(), by:{gcp.project.id} | fields gcp.project.id, hasLogs = count \u003e 0 ],\n                  sourceField:`Google Cloud project`, lookupField: gcp.project.id\n       | fields `Google Cloud project`, id, compliant=lookup.hasLogs\n       ",
        "title": "Unmonitored Google Cloud logs",
        "zeroRated": true
      },
      "settings": {
        "muted": false
      }
    })
}
