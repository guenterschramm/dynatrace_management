resource "dynatrace_platform_bucket" "default_fleet_events" {
  name         = "default_fleet_events"
  display_name = "Fleet Events"
  retention    = 1
  table        = "events"
}
