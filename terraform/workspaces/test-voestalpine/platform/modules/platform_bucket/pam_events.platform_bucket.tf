resource "dynatrace_platform_bucket" "pam_events" {
  name         = "pam_events"
  display_name = "pam_events"
  retention    = 30
  table        = "events"
}
