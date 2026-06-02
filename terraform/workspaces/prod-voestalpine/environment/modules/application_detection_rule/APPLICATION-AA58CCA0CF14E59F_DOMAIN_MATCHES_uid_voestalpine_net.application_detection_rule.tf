resource "dynatrace_application_detection_rule" "APPLICATION-AA58CCA0CF14E59F_DOMAIN_MATCHES_uid_voestalpine_net" {
  application_identifier = "APPLICATION-AA58CCA0CF14E59F"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "uid.voestalpine.net"
  }
}
