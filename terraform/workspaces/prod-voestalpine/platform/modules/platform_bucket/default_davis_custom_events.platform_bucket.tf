resource "dynatrace_platform_bucket" "default_davis_custom_events" {
  name         = "default_davis_custom_events"
  display_name = "Custom Davis events (35 days)"
  retention    = 35
  table        = "events"
}
