resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_15" {
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
        "description": "All hosts which have processes that support deep monitoring. Deep monitoring of microservices\n        enables end to end tracing.",
        "environmentScope": false,
        "id": "hosts-with-injectable-processes-0",
        "priority": "INFO",
        "query": "fetch dt.entity.process_group_instance, from:-15m\n        | filter in(processType,{\"JAVA\", \"PHP\", \"DOTNET\", \"GO\", \"NODE_JS\", \"APACHE_HTTPD\", \"NGINX\"})\n        | fieldsAdd hostid=belongs_to[dt.entity.host]\n        | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:\"host.\"\n        | fields entity.name=host.entity.name, id=host.id, monitoringMode=host.monitoringMode\n        | summarize by:{id,entity.name,monitoringMode}, count=count()\n        | fieldsRemove count\n        | fieldsAdd host.id=id, compliant=(monitoringMode == \"FULL_STACK\")\n        ",
        "title": "Hosts with injectable processes"
      },
      "settings": {
        "muted": false
      }
    })
}
