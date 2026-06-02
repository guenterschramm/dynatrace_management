resource "dynatrace_application_detection_rule" "APPLICATION-E4D5397424D93928_URL_CONTAINS_www_voestalpine_com_kust" {
  application_identifier = "APPLICATION-E4D5397424D93928"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "www.voestalpine.com/kust/"
  }
}
