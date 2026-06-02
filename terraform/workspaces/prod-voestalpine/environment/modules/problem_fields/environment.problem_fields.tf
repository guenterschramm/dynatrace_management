resource "dynatrace_problem_fields" "environment" {
  enabled       = true
  event_field   = "host.name"
  problem_field = "host.name"
}
