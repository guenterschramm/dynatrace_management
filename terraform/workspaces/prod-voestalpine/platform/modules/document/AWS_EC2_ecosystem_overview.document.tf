resource "dynatrace_document" "AWS_EC2_ecosystem_overview" {
  name      = "AWS EC2 ecosystem overview"
  type      = "smartscape"
  content   = jsonencode({})
  custom_id = "dynatrace.smartscape.aws-overview"
  # private = false
}
