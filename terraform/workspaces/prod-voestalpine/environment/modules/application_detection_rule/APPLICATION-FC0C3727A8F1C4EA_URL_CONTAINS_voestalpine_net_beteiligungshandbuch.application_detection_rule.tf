resource "dynatrace_application_detection_rule" "APPLICATION-FC0C3727A8F1C4EA_URL_CONTAINS_voestalpine_net_beteiligungshandbuch" {
  application_identifier = "APPLICATION-FC0C3727A8F1C4EA"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "voestalpine.net/beteiligungshandbuch"
  }
}
