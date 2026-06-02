resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_1" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "name": "setMonitoringMode",
            "parameters": [
              {
                "name": "mode",
                "value": "FULL_STACK"
              }
            ]
          }
        ],
        "category": "Deep monitoring",
        "description": "Through end-to-end tracing services on these hosts were found to be externally facing",
        "environmentScope": false,
        "id": "hosts-with-external-services-0",
        "priority": "CRITICAL",
        "query": "fetch dt.entity.host, from:-15m\n        | filter hasPublicTraffic == true OR ebpfHasPublicTraffic == true\n        | fields host=entity.name, monitoringMode, host.id=id, compliant=(monitoringMode == \"FULL_STACK\")\n        ",
        "title": "Hosts with external services"
      },
      "settings": {
        "muted": false
      }
    })
}
