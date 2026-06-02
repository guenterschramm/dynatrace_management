resource "dynatrace_platform_bucket" "pcd_pw_portal_spans" {
  name         = "pcd_pw_portal_spans"
  display_name = "PCD PW Portal - Transaction Data"
  retention    = 10
  table        = "spans"
}
