resource "dynatrace_application_detection_rule" "APPLICATION-CDFEE7CC3482D9E8_URL_CONTAINS_logserv_voestalpine_net_pintranet" {
  application_identifier = "APPLICATION-CDFEE7CC3482D9E8"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "logserv.voestalpine.net/pintranet/"
  }
}
