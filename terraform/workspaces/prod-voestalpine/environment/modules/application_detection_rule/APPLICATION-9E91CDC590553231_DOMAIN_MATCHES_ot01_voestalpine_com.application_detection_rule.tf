resource "dynatrace_application_detection_rule" "APPLICATION-9E91CDC590553231_DOMAIN_MATCHES_ot01_voestalpine_com" {
  application_identifier = "APPLICATION-9E91CDC590553231"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "ot01.voestalpine.com"
  }
}
