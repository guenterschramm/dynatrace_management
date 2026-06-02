resource "dynatrace_application_detection_rule" "APPLICATION-1CF4A917DFBACBAC_URL_CONTAINS_mab-aktien-admin_voestalpine_net" {
  application_identifier = "APPLICATION-1CF4A917DFBACBAC"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "mab-aktien-admin.voestalpine.net"
  }
}
