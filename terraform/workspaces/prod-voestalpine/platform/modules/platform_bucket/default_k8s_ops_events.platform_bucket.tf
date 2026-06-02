resource "dynatrace_platform_bucket" "default_k8s_ops_events" {
  name         = "default_k8s_ops_events"
  display_name = "Kubernetes Ops events (35 days)"
  retention    = 35
  table        = "events"
}
