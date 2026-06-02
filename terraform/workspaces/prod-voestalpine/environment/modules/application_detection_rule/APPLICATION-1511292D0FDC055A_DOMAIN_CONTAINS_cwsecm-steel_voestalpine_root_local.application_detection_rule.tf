resource "dynatrace_application_detection_rule" "APPLICATION-1511292D0FDC055A_DOMAIN_CONTAINS_cwsecm-steel_voestalpine_root_local" {
  application_identifier = "APPLICATION-1511292D0FDC055A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "CONTAINS"
    pattern                  = "cwsecm-steel.voestalpine.root.local"
  }
}
