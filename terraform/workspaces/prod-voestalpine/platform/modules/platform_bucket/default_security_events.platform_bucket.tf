resource "dynatrace_platform_bucket" "default_security_events" {
  name         = "default_security_events"
  display_name = "Security events (3 years)"
  retention    = 1102
  table        = "events"
}
