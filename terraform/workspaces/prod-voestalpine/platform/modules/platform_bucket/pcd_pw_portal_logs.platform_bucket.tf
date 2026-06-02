resource "dynatrace_platform_bucket" "pcd_pw_portal_logs" {
  name         = "pcd_pw_portal_logs"
  display_name = "PCD and PW Portal Logs"
  retention    = 14
  table        = "logs"
}
