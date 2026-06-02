resource "dynatrace_platform_bucket" "davis_pcd_pw_portal_events" {
  name         = "davis_pcd_pw_portal_events"
  display_name = "PCD and PW Portal - Davis Problems and Events (15 month)"
  retention    = 462
  table        = "events"
}
