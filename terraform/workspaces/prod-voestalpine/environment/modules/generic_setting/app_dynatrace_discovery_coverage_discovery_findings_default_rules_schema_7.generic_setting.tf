resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_7" {
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
                "value": "[Built-in] Kubernetes default namespaces logs"
              }
            ]
          }
        ],
        "category": "Logs",
        "description": "Logs are a critical signal for Observability and Security use cases. There are multiple ways to ingest logs, but the easiest is via OneAgent. This rule looks for Kubernetes containers and determines whether logs have been detected and ingested by OneAgent. The recommended remediation action is to enable a built-in rule to ingest these logs environment wide, to ensure there are no blind spots. Alternatively, you can create your own rules at the environment, namespace, deployment, or container level.",
        "environmentScope": true,
        "id": "unmonitored-kubernetes-logs-0",
        "priority": "CRITICAL",
        "query": "fetch dt.entity.container_group_instance\n        | fieldsAdd process=contains[dt.entity.process_group_instance][0]\n        | filterOut isNull(process) or isNull(belongs_to[dt.entity.kubernetes_cluster])\n        | lookup [fetch dt.entity.process_group_instance, from:-7d\n          | fieldsAdd hostId=belongs_to[dt.entity.host],id,logMonitored=isNotNull(logPathLastUpdate) or\n            (isNotNull(logSourceState) and contains(toString(logSourceState),\"LOG_STORAGE_CONFIGURATION_STATUS_SEND_TO_STORAGE\"))\n        ], sourceField:process, lookupField:id, prefix:\"process.\"\n        | lookup [fetch dt.entity.cloud_application], sourceField:belongs_to[dt.entity.cloud_application], lookupField:id, prefix:\"deployment.\"\n        | lookup [fetch dt.entity.cloud_application_namespace], sourceField:belongs_to[dt.entity.cloud_application_namespace], lookupField:id, prefix:\"namespace.\"\n        | fields namespace=namespace.entity.name, namespace.id, deployment=deployment.entity.name, deployment.id, container=entity.name, container.id=id,\n          compliant=process.logMonitored\n        ",
        "title": "Unmonitored Kubernetes logs"
      },
      "settings": {
        "muted": false
      }
    })
}
