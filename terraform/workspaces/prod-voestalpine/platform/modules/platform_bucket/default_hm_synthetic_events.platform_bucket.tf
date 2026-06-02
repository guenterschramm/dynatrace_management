resource "dynatrace_platform_bucket" "default_hm_synthetic_events" {
  name         = "default_hm_synthetic_events"
  display_name = "Default synthetic HTTP Monitor events"
  retention    = 35
  table        = "events"
}
