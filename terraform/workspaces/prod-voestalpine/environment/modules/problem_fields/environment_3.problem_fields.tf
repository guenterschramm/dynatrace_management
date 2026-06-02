resource "dynatrace_problem_fields" "environment_3" {
  enabled       = true
  event_field   = "aws.region"
  problem_field = "aws.region"
}
