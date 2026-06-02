resource "dynatrace_problem_fields" "environment_20" {
  enabled       = true
  event_field   = "k8s.workload.kind"
  problem_field = "k8s.workload.kind"
}
