resource "dynatrace_problem_fields" "environment_19" {
  enabled       = true
  event_field   = "k8s.service.name"
  problem_field = "k8s.service.name"
}
