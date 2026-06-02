resource "dynatrace_application_detection_rule" "APPLICATION-88983ED3E55002F0_URL_CONTAINS_kapfenberg_Satre2" {
  application_identifier = "APPLICATION-88983ED3E55002F0"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "/kapfenberg/Satre2/"
  }
}
