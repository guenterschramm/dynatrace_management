resource "dynatrace_application_detection_rule" "APPLICATION-E45DB59C448BF1CD_URL_CONTAINS_procontract_voestalpine_net" {
  application_identifier = "APPLICATION-E45DB59C448BF1CD"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "procontract.voestalpine.net"
  }
}
