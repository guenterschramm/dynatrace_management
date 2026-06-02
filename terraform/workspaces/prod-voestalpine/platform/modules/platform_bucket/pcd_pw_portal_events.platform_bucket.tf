resource "dynatrace_platform_bucket" "pcd_pw_portal_events" {
  name         = "pcd_pw_portal_events"
  display_name = "PCD and PW Portal Events"
  retention    = 450
  table        = "events"
}
