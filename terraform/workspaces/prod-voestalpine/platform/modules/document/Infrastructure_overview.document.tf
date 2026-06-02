resource "dynatrace_document" "Infrastructure_overview" {
  name      = "Infrastructure overview"
  type      = "smartscape"
  content   = jsonencode({})
  custom_id = "dynatrace.smartscape.infrastructure-overview"
  # private = false
}
