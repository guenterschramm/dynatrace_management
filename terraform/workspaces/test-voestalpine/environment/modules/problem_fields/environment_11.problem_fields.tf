resource "dynatrace_problem_fields" "environment_11" {
  enabled       = true
  event_field   = "k8s.container.name"
  problem_field = "k8s.container.name"
}
