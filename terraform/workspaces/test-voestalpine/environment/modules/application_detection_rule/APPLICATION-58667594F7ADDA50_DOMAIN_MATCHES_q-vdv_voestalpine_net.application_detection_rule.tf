resource "dynatrace_application_detection_rule" "APPLICATION-58667594F7ADDA50_DOMAIN_MATCHES_q-vdv_voestalpine_net" {
  application_identifier = "APPLICATION-58667594F7ADDA50"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "q-vdv.voestalpine.net"
  }
}
