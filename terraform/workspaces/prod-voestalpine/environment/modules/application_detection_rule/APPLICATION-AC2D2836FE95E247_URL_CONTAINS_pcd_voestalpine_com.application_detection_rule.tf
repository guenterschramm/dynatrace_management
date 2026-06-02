resource "dynatrace_application_detection_rule" "APPLICATION-AC2D2836FE95E247_URL_CONTAINS_pcd_voestalpine_com" {
  application_identifier = "APPLICATION-AC2D2836FE95E247"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "pcd.voestalpine.com"
  }
}
