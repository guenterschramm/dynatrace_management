resource "dynatrace_application_detection_rule" "APPLICATION-4342A6B443691537_DOMAIN_MATCHES_ecm-tempo_voestalpine_com" {
  application_identifier = "APPLICATION-4342A6B443691537"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "ecm-tempo.voestalpine.com"
  }
}
