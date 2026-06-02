resource "dynatrace_problem_fields" "environment_16" {
  enabled       = true
  event_field   = "gcp.region"
  problem_field = "gcp.region"
}
