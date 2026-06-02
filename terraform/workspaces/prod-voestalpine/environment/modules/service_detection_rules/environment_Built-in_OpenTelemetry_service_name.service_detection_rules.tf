resource "dynatrace_service_detection_rules" "environment_Built-in_OpenTelemetry_service_name" {
  enabled      = false
  insert_after = ""
  scope        = "environment"
  rule {
    condition             = "isNotNull(service.name) and service.name != \"unknown_service\""
    rule_name             = "[Built-in] OpenTelemetry service name"
    service_name_template = "{service.name}"
  }
}
