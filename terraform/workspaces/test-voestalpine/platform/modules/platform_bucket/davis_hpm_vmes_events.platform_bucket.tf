resource "dynatrace_platform_bucket" "davis_hpm_vmes_events" {
  name         = "davis_hpm_vmes_events"
  display_name = "Davis HPM VMES Events"
  retention    = 30
  table        = "events"
}
