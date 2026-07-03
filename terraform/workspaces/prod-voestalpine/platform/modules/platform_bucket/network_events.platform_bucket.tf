resource "dynatrace_platform_bucket" "network_events" {
  name         = "network_events"
  display_name = "Network Events"
  retention    = 450
  table        = "events"
}
