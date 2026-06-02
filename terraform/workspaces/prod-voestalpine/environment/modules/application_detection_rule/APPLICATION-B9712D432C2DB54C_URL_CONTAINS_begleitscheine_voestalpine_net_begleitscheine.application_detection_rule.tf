resource "dynatrace_application_detection_rule" "APPLICATION-B9712D432C2DB54C_URL_CONTAINS_begleitscheine_voestalpine_net_begleitscheine" {
  application_identifier = "APPLICATION-B9712D432C2DB54C"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "begleitscheine.voestalpine.net/begleitscheine/"
  }
}
