resource "dynatrace_application_detection_rule" "APPLICATION-48AC063F55531439_DOMAIN_MATCHES_sqm-rportal_voestalpine_net" {
  application_identifier = "APPLICATION-48AC063F55531439"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "sqm-rportal.voestalpine.net"
  }
}
