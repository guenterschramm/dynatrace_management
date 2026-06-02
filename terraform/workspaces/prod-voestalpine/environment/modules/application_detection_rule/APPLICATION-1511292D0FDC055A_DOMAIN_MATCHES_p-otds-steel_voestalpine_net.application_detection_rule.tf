resource "dynatrace_application_detection_rule" "APPLICATION-1511292D0FDC055A_DOMAIN_MATCHES_p-otds-steel_voestalpine_net" {
  application_identifier = "APPLICATION-1511292D0FDC055A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "p-otds-steel.voestalpine.net"
  }
}
