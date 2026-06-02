resource "dynatrace_problem_fields" "environment_12" {
  enabled       = true
  event_field   = "cloud.region"
  problem_field = "cloud.region"
}
