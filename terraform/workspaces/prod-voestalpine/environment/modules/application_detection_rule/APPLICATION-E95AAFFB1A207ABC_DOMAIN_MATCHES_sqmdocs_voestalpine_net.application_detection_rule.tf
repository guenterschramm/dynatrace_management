resource "dynatrace_application_detection_rule" "APPLICATION-E95AAFFB1A207ABC_DOMAIN_MATCHES_sqmdocs_voestalpine_net" {
  application_identifier = "APPLICATION-E95AAFFB1A207ABC"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "sqmdocs.voestalpine.net"
  }
}
