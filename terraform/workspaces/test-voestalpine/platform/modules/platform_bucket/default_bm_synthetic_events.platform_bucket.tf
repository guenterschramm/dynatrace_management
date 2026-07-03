resource "dynatrace_platform_bucket" "default_bm_synthetic_events" {
  name         = "default_bm_synthetic_events"
  display_name = "Default synthetic Browser Monitor events"
  retention    = 35
  table        = "events"
}
