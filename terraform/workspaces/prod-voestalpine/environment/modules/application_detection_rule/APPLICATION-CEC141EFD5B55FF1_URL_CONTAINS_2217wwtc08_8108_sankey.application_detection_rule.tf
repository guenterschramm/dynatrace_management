resource "dynatrace_application_detection_rule" "APPLICATION-CEC141EFD5B55FF1_URL_CONTAINS_2217wwtc08_8108_sankey" {
  application_identifier = "APPLICATION-CEC141EFD5B55FF1"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "2217wwtc08:8108/sankey"
  }
}
