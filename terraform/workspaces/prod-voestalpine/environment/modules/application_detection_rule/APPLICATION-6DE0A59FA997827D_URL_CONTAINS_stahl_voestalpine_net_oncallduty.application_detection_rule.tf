resource "dynatrace_application_detection_rule" "APPLICATION-6DE0A59FA997827D_URL_CONTAINS_stahl_voestalpine_net_oncallduty" {
  application_identifier = "APPLICATION-6DE0A59FA997827D"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "stahl.voestalpine.net/oncallduty/"
  }
}
