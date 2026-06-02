resource "dynatrace_platform_bucket" "davis_pam_events" {
  name         = "davis_pam_events"
  display_name = "PAM - Davis Problems and Events (15 month)"
  retention    = 462
  table        = "events"
}
