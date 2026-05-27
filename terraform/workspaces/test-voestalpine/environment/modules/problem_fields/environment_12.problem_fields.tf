resource "dynatrace_problem_fields" "environment_12" {
  enabled       = true
  event_field   = "azure.resource.group"
  problem_field = "azure.resource.group"
}
