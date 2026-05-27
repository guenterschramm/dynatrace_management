resource "dynatrace_application_detection_rule" "APPLICATION-B3B69BA4458A7ACF_DOMAIN_MATCHES_q-activatemas_voestalpine_net" {
  application_identifier = "APPLICATION-B3B69BA4458A7ACF"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "q-activatemas.voestalpine.net"
  }
}
