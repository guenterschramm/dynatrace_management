resource "dynatrace_platform_bucket" "tpi_messaging_spans" {
  name         = "tpi_messaging_spans"
  display_name = "TPI Messaging Spans"
  retention    = 14
  table        = "spans"
}
