resource "dynatrace_platform_bucket" "davis_xecm_steel_events" {
  name         = "davis_xecm_steel_events"
  display_name = "xECM Steel - Davis Problems and Events (15 month)"
  retention    = 462
  table        = "events"
}
