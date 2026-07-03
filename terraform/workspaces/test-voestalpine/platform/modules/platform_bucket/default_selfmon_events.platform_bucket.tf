resource "dynatrace_platform_bucket" "default_selfmon_events" {
  name         = "default_selfmon_events"
  display_name = "Self-monitoring events (35 days)"
  retention    = 35
  table        = "dt.system.events"
}
