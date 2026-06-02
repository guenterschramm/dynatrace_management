resource "dynatrace_application_detection_rule" "APPLICATION-4342A6B443691537_DOMAIN_MATCHES_p-otds_voestalpine_net" {
  application_identifier = "APPLICATION-4342A6B443691537"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "p-otds.voestalpine.net"
  }
}
