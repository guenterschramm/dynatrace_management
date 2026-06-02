resource "dynatrace_application_detection_rule" "APPLICATION-1511292D0FDC055A_DOMAIN_BEGINS_WITH_2236asecm" {
  application_identifier = "APPLICATION-1511292D0FDC055A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "BEGINS_WITH"
    pattern                  = "2236asecm"
  }
}
