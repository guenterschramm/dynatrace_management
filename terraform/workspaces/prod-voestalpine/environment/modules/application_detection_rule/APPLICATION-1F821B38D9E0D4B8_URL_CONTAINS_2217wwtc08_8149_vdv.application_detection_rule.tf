resource "dynatrace_application_detection_rule" "APPLICATION-1F821B38D9E0D4B8_URL_CONTAINS_2217wwtc08_8149_vdv" {
  application_identifier = "APPLICATION-1F821B38D9E0D4B8"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "2217wwtc08:8149/vdv"
  }
}
