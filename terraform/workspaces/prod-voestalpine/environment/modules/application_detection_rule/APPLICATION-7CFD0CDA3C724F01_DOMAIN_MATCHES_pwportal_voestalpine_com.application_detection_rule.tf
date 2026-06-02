resource "dynatrace_application_detection_rule" "APPLICATION-7CFD0CDA3C724F01_DOMAIN_MATCHES_pwportal_voestalpine_com" {
  application_identifier = "APPLICATION-7CFD0CDA3C724F01"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "pwportal.voestalpine.com"
  }
}
