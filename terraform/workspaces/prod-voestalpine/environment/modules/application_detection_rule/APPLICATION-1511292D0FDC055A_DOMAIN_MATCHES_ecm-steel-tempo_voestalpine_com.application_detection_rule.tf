resource "dynatrace_application_detection_rule" "APPLICATION-1511292D0FDC055A_DOMAIN_MATCHES_ecm-steel-tempo_voestalpine_com" {
  application_identifier = "APPLICATION-1511292D0FDC055A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "ecm-steel-tempo.voestalpine.com"
  }
}
