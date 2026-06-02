resource "dynatrace_document" "Kubernetes_overview" {
  name      = "Kubernetes overview"
  type      = "smartscape"
  content   = jsonencode({})
  custom_id = "dynatrace.smartscape.k8s-overview"
  # private = false
}
