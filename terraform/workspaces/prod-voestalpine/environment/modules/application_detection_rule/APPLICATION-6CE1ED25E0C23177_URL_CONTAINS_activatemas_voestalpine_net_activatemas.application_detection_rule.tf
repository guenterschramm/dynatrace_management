resource "dynatrace_application_detection_rule" "APPLICATION-6CE1ED25E0C23177_URL_CONTAINS_activatemas_voestalpine_net_activatemas" {
  application_identifier = "APPLICATION-6CE1ED25E0C23177"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "activatemas.voestalpine.net/activatemas/"
  }
}
