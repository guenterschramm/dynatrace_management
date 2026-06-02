resource "dynatrace_application_detection_rule" "APPLICATION-6CE1ED25E0C23177_DOMAIN_MATCHES_activatemas_voestalpine_net" {
  application_identifier = "APPLICATION-6CE1ED25E0C23177"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "activatemas.voestalpine.net"
  }
}
