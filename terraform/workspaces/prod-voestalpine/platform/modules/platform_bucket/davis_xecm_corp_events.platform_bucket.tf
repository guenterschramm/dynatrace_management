resource "dynatrace_platform_bucket" "davis_xecm_corp_events" {
  name         = "davis_xecm_corp_events"
  display_name = "xECM Corporate - Davis Problems and Events (15month)"
  retention    = 462
  table        = "events"
}
