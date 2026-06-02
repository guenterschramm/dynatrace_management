resource "dynatrace_platform_bucket" "default_synthetic_detailed_events" {
  name         = "default_synthetic_detailed_events"
  display_name = "Default synthetic detailed HTTP Monitor events"
  retention    = 35
  table        = "events"
}
