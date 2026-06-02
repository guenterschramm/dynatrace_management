resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_9" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "name": "installDynatraceOperator",
            "parameters": []
          }
        ],
        "category": "Kubernetes",
        "description": "Kubernetes is the 'operating system' of the modern cloud. As such, it's important from a platform engineering perspective to monitor Kubernetes, not just your workloads. Dynatrace monitors Kubernetes using an Operator. This rule detects Kubernetes clusters which are not monitored using the Operator and opens a new tab to the Kubernetes app, so that you can install the Operator.",
        "environmentScope": true,
        "id": "unmonitored-kubernetes-cluster-0",
        "priority": "CRITICAL",
        "query": "fetch dt.entity.process_group_instance, from:-15m\n        | filter contains(toString(softwareTechnologies),\"type:KUBERNETES\")\n        | fieldsAdd hostId=belongs_to[dt.entity.host]\n        | lookup [fetch dt.entity.host | fieldsAdd compliant=isNotNull(contains[dt.entity.kubernetes_node])], lookupField:id, sourceField:hostId, prefix:\"host.\"\n        | summarize count=count(), by:{host.id, host=host.entity.name, compliant=host.compliant}\n        | fieldsRemove count\n        ",
        "title": "Unmonitored Kubernetes cluster"
      },
      "settings": {
        "muted": false
      }
    })
}
