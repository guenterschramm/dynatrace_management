resource "dynatrace_document" "Service_dependency_graph" {
  name      = "Service dependency graph"
  type      = "smartscape"
  content   = jsonencode({})
  custom_id = "dynatrace.smartscape.service-overview"
  # private = false
}
