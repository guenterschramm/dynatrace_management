resource "dynatrace_application_detection_rule" "APPLICATION-1511292D0FDC055A_DOMAIN_CONTAINS_2236asmgnt02" {
  application_identifier = "APPLICATION-1511292D0FDC055A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "CONTAINS"
    pattern                  = "2236asmgnt02"
  }
}
