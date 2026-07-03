resource "dynatrace_document" "Problem_graph" {
  name      = "Problem graph"
  type      = "smartscape"
  content   = jsonencode({})
  custom_id = "dynatrace.smartscape.problem-overview"
  # private = false
}
