resource "dynatrace_platform_bucket" "pam_events" {
  name         = "pam_events"
  display_name = "PAM Events"
  retention    = 60
  table        = "events"
}
