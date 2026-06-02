resource "dynatrace_problem_fields" "environment_17" {
  enabled       = true
  event_field   = "k8s.node.name"
  problem_field = "k8s.node.name"
}
