resource "dynatrace_platform_bucket" "dt_system_events" {
  name         = "dt_system_events"
  display_name = "System events (1 year)"
  retention    = 372
  table        = "dt.system.events"
}
