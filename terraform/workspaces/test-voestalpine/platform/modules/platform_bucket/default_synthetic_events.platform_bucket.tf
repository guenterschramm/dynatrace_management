resource "dynatrace_platform_bucket" "default_synthetic_events" {
  name         = "default_synthetic_events"
  display_name = "Default synthetic on-demand and Network Availability Monitor events"
  retention    = 35
  table        = "events"
}
