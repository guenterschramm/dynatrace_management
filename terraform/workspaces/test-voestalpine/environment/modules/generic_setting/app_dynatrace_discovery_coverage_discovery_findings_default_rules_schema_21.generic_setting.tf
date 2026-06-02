resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_21" {
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
          },
          {
            "name": "activateExtension",
            "parameters": [
              {
                "name": "extensionName",
                "value": "com.dynatrace.extension.jmx-activemq"
              },
              {
                "name": "defaultPort",
                "value": "61616"
              }
            ]
          }
        ],
        "category": "Messaging",
        "description": "ActiveMQ is an important messaging part of your infrastructure.\n        Infrastructure Mode and an extension are highly recommended. Without\n        adequate monitoring, Davis has a limited view into your MQ health.",
        "environmentScope": false,
        "id": "undermonitored-active-mq-0",
        "priority": "WARNING",
        "query": "fetch dt.entity.process_group_instance, from:-15m\n        | filter matchesValue(softwareTechnologies, \"type:ACTIVE_MQ\")\n        | fieldsAdd hostid=belongs_to[dt.entity.host]\n        | lookup [ fetch dt.entity.host | fieldsAdd monitoringMode], sourceField:hostid, lookupField:id, prefix:\"host.\"\n        | fields id, entity.name, host=host.entity.name, host.id, listenPorts, ipAddress=host.ipAddress, monitoringMode=host.monitoringMode\n        | lookup [ fetch `dt.entity.activemq:broker` | fieldsAdd hostid=runs_on[dt.entity.host]], sourceField:host.id, lookupField:hostid, prefix:\"mq.\"\n        | fieldsAdd compliant=(isNotNull(mq.hostid) and in(monitoringMode, array(\"INFRASTRUCTURE\", \"FULL_STACK\")))\n        | fields process.id=id, process=entity.name, host, host.id, listenPorts, ipAddress, monitoringMode, mq.id, mq=mq.entity.name, compliant\n        ",
        "title": "Undermonitored ActiveMQ"
      },
      "settings": {
        "muted": false
      }
    })
}
