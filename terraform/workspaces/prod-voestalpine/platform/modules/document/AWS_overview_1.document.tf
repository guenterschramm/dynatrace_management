resource "dynatrace_document" "AWS_overview_1" {
  name      = "AWS overview"
  type      = "smartscape"
  content   = jsonencode({})
  custom_id = "dynatrace.smartscape.aws-overview"
  # private = false
}
