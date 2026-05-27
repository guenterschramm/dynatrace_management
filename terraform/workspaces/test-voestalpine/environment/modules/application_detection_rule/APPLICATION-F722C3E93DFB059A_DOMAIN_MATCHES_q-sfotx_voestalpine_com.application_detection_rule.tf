resource "dynatrace_application_detection_rule" "APPLICATION-F722C3E93DFB059A_DOMAIN_MATCHES_q-sfotx_voestalpine_com" {
  application_identifier = "APPLICATION-F722C3E93DFB059A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = " q-sfotx.voestalpine.com"
  }
}
