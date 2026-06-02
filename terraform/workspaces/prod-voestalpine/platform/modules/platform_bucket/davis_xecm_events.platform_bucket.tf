resource "dynatrace_platform_bucket" "davis_xecm_events" {
  name         = "davis_xecm_events"
  display_name = "xECM Steel - Davis Problems and Events (15 month)"
  retention    = 462
  table        = "events"
}
