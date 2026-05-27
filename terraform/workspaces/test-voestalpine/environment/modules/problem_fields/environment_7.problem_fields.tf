resource "dynatrace_problem_fields" "environment_7" {
  enabled       = true
  event_field   = "k8s.pod.name"
  problem_field = "k8s.pod.name"
}
