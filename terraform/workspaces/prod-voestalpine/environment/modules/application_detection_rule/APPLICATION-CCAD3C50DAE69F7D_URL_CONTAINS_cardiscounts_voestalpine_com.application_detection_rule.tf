resource "dynatrace_application_detection_rule" "APPLICATION-CCAD3C50DAE69F7D_URL_CONTAINS_cardiscounts_voestalpine_com" {
  application_identifier = "APPLICATION-CCAD3C50DAE69F7D"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "cardiscounts.voestalpine.com"
  }
}
