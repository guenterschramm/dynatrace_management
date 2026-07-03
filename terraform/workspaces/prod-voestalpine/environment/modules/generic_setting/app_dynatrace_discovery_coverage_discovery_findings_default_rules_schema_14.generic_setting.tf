resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_14" {
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
                "value": "AT_LEAST_INFRA"
              }
            ]
          }
        ],
        "category": "Databases",
        "description": "MongoDB databases are an important part of your infrastructure.\n        Infrastructure Mode and a database extension are highly recommended. Without\n        adequate monitoring, Davis can only tell that the database is the rootcause,\n        not why the database is causing slow performance.",
        "environmentScope": false,
        "id": "undermonitored-mongo-db-0",
        "priority": "WARNING",
        "query": "fetch dt.entity.process_group_instance, from:-15m\n        | filter matchesValue(softwareTechnologies, \"*type:MONGODB*\")\n        | fieldsAdd hostid=belongs_to[dt.entity.host]\n        | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:\"host.\"\n        | fields process.id=id, process=entity.name, host=host.entity.name, host.id, listenPorts, ipAddress=host.ipAddress, monitoringMode=host.monitoringMode, compliant=(in(host.monitoringMode, array(\"INFRASTRUCTURE\", \"FULL_STACK\")))\n        ",
        "title": "Undermonitored MongoDB databases"
      },
      "settings": {
        "muted": false
      }
    })
}
