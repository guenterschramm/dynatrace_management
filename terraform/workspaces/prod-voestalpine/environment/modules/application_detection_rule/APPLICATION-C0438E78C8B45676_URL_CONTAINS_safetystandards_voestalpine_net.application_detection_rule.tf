resource "dynatrace_application_detection_rule" "APPLICATION-C0438E78C8B45676_URL_CONTAINS_safetystandards_voestalpine_net" {
  application_identifier = "APPLICATION-C0438E78C8B45676"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "safetystandards.voestalpine.net"
  }
}
