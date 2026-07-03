resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_13" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "instantAction": true,
            "name": "configureLogForwardingForTechnology",
            "parameters": [
              {
                "name": "technology",
                "value": "fluent-bit"
              }
            ]
          }
        ],
        "category": "Logs",
        "description": "Monitoring Kubernetes logs, together with other observability signals like metrics and traces, is important to assure full context for observability and troubleshooting use cases.\n    This rule detects existing fluentbit instances that are not integrated with Dynatrace, and provides instructions for configuring your log forwarder to send data to logs ingest API.",
        "environmentScope": true,
        "id": "unmonitored-fluentbit-logs-0",
        "priority": "WARNING",
        "query": "fetch dt.entity.container_group_instance\n        | fieldsAdd containerImageName, cluster_id=belongs_to[dt.entity.kubernetes_cluster]\n        | filter matchesPhrase(containerImageName,\"fluent-bit\")\n        | summarize tmp=count(), by: cluster_id\n        | fieldsRemove tmp\n        | fieldsAdd compliant = cluster_id in [\n          timeseries count = sum(dt.log.status_per_entity_count), by: {dt.entity.kubernetes_cluster}, from: now()-1h\n          | filterOut isNull(dt.entity.kubernetes_cluster)\n          | fields dt.entity.kubernetes_cluster\n        ]\n        | lookup [fetch dt.entity.kubernetes_cluster], sourceField:cluster_id, lookupField:id, prefix:\"kubernetes_cluster.\"\n        | fields kubernetes_cluster=kubernetes_cluster.entity.name, kubernetes_cluster.id=cluster_id, compliant\n        ",
        "title": "Unmonitored fluentbit logs"
      },
      "settings": {
        "muted": false
      }
    })
}
