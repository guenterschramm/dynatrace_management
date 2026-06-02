resource "dynatrace_problem_fields" "environment_1" {
  enabled       = true
  event_field   = "dt.cost.costcenter"
  problem_field = "dt.cost.costcenter"
}
