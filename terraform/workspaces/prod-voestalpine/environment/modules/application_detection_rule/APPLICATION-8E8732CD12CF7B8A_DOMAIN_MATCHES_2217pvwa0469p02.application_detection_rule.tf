resource "dynatrace_application_detection_rule" "APPLICATION-8E8732CD12CF7B8A_DOMAIN_MATCHES_2217pvwa0469p02" {
  application_identifier = "APPLICATION-8E8732CD12CF7B8A"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "2217pvwa0469p02"
  }
}
