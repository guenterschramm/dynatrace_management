resource "dynatrace_platform_bucket" "default_events" {
  name         = "default_events"
  display_name = "Default events"
  retention    = 35
  table        = "events"
}
