resource "dynatrace_problem_fields" "environment_22" {
  enabled       = true
  event_field   = "k8s.workload.name"
  problem_field = "k8s.workload.name"
}
