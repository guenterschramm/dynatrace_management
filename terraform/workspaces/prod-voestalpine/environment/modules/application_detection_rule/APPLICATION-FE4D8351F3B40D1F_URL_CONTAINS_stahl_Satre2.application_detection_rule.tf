resource "dynatrace_application_detection_rule" "APPLICATION-FE4D8351F3B40D1F_URL_CONTAINS_stahl_Satre2" {
  application_identifier = "APPLICATION-FE4D8351F3B40D1F"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "/stahl/Satre2/"
  }
}
