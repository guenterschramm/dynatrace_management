resource "dynatrace_platform_bucket" "default_davis_events" {
  name         = "default_davis_events"
  display_name = "Davis events and problems (15 months)"
  retention    = 462
  table        = "events"
}
