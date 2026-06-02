resource "dynatrace_application_detection_rule" "APPLICATION-7CFD0CDA3C724F01_URL_CONTAINS_pwportal_voestalpine_com" {
  application_identifier = "APPLICATION-7CFD0CDA3C724F01"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "pwportal.voestalpine.com"
  }
}
