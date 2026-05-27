resource "dynatrace_problem_fields" "environment_21" {
  enabled       = true
  event_field   = "k8s.namespace.name"
  problem_field = "k8s.namespace.name"
}
