resource "dynatrace_application_detection_rule" "APPLICATION-AC2D2836FE95E247_DOMAIN_MATCHES_pcd_voestalpine_com" {
  application_identifier = "APPLICATION-AC2D2836FE95E247"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "pcd.voestalpine.com"
  }
}
