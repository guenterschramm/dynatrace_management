resource "dynatrace_application_detection_rule" "APPLICATION-CCAD3C50DAE69F7D_DOMAIN_MATCHES_cardiscounts_voestalpine_net" {
  application_identifier = "APPLICATION-CCAD3C50DAE69F7D"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "cardiscounts.voestalpine.net"
  }
}
