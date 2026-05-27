resource "dynatrace_application_detection_rule" "APPLICATION-61E6DCACDCB027EF_DOMAIN_MATCHES_test-uid_voestalpine_net" {
  application_identifier = "APPLICATION-61E6DCACDCB027EF"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "test-uid.voestalpine.net"
  }
}
