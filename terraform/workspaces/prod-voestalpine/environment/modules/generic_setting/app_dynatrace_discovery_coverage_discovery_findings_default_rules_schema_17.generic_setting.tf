resource "dynatrace_generic_setting" "app_dynatrace_discovery_coverage_discovery_findings_default_rules_schema_17" {
  schema = "app:dynatrace.discovery.coverage:discovery.findings.default.rules.schema"
  scope  = "environment"
  value  = jsonencode({
      "rule": {
        "actions": [
          {
            "name": "configureSynthetic",
            "parameters": []
          }
        ],
        "category": "Frontend",
        "description": "Real User Monitoring (RUM) provides a great view into frontend\n        performance and behavior, as it experienced by users. It is recommended to also include synthetic tests\n        to ensure consistent performance and availability monitoring around the clock.\n        ",
        "environmentScope": true,
        "id": "undermonitored-rum-applications-0",
        "priority": "WARNING",
        "query": "fetch dt.entity.application, from:-15m\n        | fieldsAdd isSyntheticMonitored=isNotNull(monitored_by[dt.entity.synthetic_test]), isHttpMonitored=isNotNull(monitored_by[dt.entity.http_check])\n        | fieldsAdd compliant=(isSyntheticMonitored or isHttpMonitored)\n        | fields application.id=id, application=entity.name, isSyntheticMonitored, isHttpMonitored, compliant\n        ",
        "title": "Undermonitored frontend applications"
      },
      "settings": {
        "muted": false
      }
    })
}
