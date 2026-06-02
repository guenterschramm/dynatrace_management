resource "dynatrace_application_detection_rule" "APPLICATION-E95AAFFB1A207ABC_URL_CONTAINS_sqmdocs_voestalpine_net" {
  application_identifier = "APPLICATION-E95AAFFB1A207ABC"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "sqmdocs.voestalpine.net"
  }
}
