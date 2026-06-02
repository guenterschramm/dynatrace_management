resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_21" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "name": "enableLogIngestRule",
            "parameters": [
              {
                "name": "ruleName",
                "value": "[Built-in] Linux system logs"
              }
            ]
          }
        ],
        "category": "Logs",
        "description": "Logs are a critical signal for Observability and Security use cases. There are multiple ways to ingest logs, but the easiest is via OneAgent. This rule looks for Linux system logs which have been detected by OneAgent but are not being ingested. The recommended remediation action is to enable a built-in rule to ingest these logs environment wide, to ensure there are no blind spots. Alternatively, you can create your own rules at the environment, host group, or host level.",
        "environmentScope": true,
        "id": "unmonitored-linux-system-logs-0",
        "priority": "CRITICAL",
        "query": "fetch dt.entity.process_group_instance, from:-7d\n        | filter processType == \"LINUX_SYSTEM\"\n        | fields hostId=belongs_to[dt.entity.host],id,logMonitored=isNotNull(logPathLastUpdate) or (isNotNull(logSourceState) and contains(toString(logSourceState),\"LOG_STORAGE_CONFIGURATION_STATUS_SEND_TO_STORAGE\"))\n        | filter id in [ fetch dt.entity.process_group_instance, from:-2h | filter processType == \"LINUX_SYSTEM\" |fields id]\n        | lookup [fetch dt.entity.host], lookupField: id, sourceField: hostId, prefix:\"host.\"\n        | fields host.id,host=host.entity.name,compliant=logMonitored\n        ",
        "title": "Unmonitored Linux system logs"
      },
      "settings": {
        "muted": false
      }
    })
}
