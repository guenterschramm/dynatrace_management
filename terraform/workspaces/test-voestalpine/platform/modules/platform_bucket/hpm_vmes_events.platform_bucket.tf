resource "dynatrace_platform_bucket" "hpm_vmes_events" {
  name         = "hpm_vmes_events"
  display_name = "xECM Production Events"
  retention    = 30
  table        = "events"
}
