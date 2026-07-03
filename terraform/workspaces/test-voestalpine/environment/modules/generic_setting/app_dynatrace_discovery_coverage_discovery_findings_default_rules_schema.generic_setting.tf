resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "name": "activateExtension",
            "parameters": [
              {
                "name": "extensionName",
                "value": "com.dynatrace.extension.istio-prometheus"
              }
            ]
          }
        ],
        "category": "Kubernetes",
        "description": "Istio service mesh and Envoy proxies are an important part of many Kubernetes deployments.\n    Monitoring via an extension is highly recommended. Without it, you and Davis may be blind to Istio/Envoy\n    internal issues.",
        "environmentScope": true,
        "id": "unmonitored-istio-0",
        "priority": "WARNING",
        "query": "fetch dt.entity.process_group_instance, from:-15m\n        | filter contains(toString(softwareTechnologies),\"type:ISTIO\")\n        | fieldsAdd cgi=belongs_to[dt.entity.container_group_instance]\n        | lookup [fetch dt.entity.container_group_instance], lookupField:id, sourceField:cgi, prefix:\"cgi.\"\n        | fieldsAdd cai=cgi.belongs_to[dt.entity.cloud_application_instance]\n        | lookup [fetch dt.entity.cloud_application_instance], lookupField:id, sourceField:cai, prefix:\"cai.\"\n        | lookup [timeseries metric=avg(istio_requests_total), by:{dt.entity.cloud_application_instance}], lookupField:dt.entity.cloud_application_instance, sourceField:cai, fields:{metric}\n        | fields process.id=id, process=entity.name, container.id=cgi.id, container=cgi.entity.name, workload.id=cai.id, workload=cai.entity.name, compliant=isNotNull(metric)",
        "title": "Undermonitored Istio/Envoy"
      },
      "settings": {
        "muted": false
      }
    })
}
