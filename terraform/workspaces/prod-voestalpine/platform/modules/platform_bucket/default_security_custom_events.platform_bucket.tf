resource "dynatrace_platform_bucket" "default_security_custom_events" {
  name         = "default_security_custom_events"
  display_name = "Custom Security events (1 year)"
  retention    = 372
  table        = "events"
}
