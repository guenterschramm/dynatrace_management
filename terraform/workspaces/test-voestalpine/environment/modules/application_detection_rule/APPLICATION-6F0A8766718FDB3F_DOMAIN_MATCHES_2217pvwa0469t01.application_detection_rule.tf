resource "dynatrace_application_detection_rule" "APPLICATION-6F0A8766718FDB3F_DOMAIN_MATCHES_2217pvwa0469t01" {
  application_identifier = "APPLICATION-6F0A8766718FDB3F"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "2217pvwa0469t01"
  }
}
