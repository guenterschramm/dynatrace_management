resource "dynatrace_application_detection_rule" "APPLICATION-8E8732CD12CF7B8A_DOMAIN_MATCHES_10_147_148" {
  application_identifier = "APPLICATION-8E8732CD12CF7B8A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "10.147.148.37"
  }
}
