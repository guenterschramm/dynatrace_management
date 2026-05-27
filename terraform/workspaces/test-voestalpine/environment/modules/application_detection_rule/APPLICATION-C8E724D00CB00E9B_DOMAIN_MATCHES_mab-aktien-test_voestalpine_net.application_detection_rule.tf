resource "dynatrace_application_detection_rule" "APPLICATION-C8E724D00CB00E9B_DOMAIN_MATCHES_mab-aktien-test_voestalpine_net" {
  application_identifier = "APPLICATION-C8E724D00CB00E9B"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "mab-aktien-test.voestalpine.net"
  }
}
