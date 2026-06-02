resource "dynatrace_application_detection_rule" "APPLICATION-64BBFE214FDD2D44_DOMAIN_MATCHES_watch" {
  application_identifier = "APPLICATION-64BBFE214FDD2D44"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "watch"
  }
}
