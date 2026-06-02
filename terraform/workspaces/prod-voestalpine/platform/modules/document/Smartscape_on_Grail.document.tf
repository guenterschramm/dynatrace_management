resource "dynatrace_document" "Smartscape_on_Grail" {
  name      = "Smartscape on Grail"
  type      = "smartscape"
  content   = jsonencode({})
  custom_id = "dynatrace.smartscape.smartscape-on-grail"
  # private = false
}
