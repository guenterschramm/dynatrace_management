resource "dynatrace_platform_bucket" "default_spans" {
  name         = "default_spans"
  display_name = "Default spans"
  retention    = 10
  table        = "spans"
}
