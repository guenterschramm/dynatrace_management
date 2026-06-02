resource "dynatrace_application_detection_rule" "APPLICATION-48AC063F55531439_URL_CONTAINS_2217wwttc08_8102_RPortal" {
  application_identifier = "APPLICATION-48AC063F55531439"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "2217wwttc08:8102/RPortal"
  }
}
