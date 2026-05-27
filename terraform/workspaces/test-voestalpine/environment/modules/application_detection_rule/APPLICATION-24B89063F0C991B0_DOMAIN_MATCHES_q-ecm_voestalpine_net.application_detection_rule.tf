resource "dynatrace_application_detection_rule" "APPLICATION-24B89063F0C991B0_DOMAIN_MATCHES_q-ecm_voestalpine_net" {
  application_identifier = "APPLICATION-24B89063F0C991B0"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "q-ecm.voestalpine.net"
  }
}
