resource "dynatrace_application_detection_rule" "APPLICATION-9E91CDC590553231_URL_CONTAINS_wchrom_WALO" {
  application_identifier = "APPLICATION-9E91CDC590553231"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "wchrom/WALO"
  }
}
