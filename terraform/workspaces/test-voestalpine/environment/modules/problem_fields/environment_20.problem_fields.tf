resource "dynatrace_problem_fields" "environment_20" {
  enabled       = true
  event_field   = "azure.subscription"
  problem_field = "azure.subscription"
}
