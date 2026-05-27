resource "dynatrace_problem_fields" "environment" {
  enabled       = true
  event_field   = "cloud.region"
  problem_field = "cloud.region"
}
