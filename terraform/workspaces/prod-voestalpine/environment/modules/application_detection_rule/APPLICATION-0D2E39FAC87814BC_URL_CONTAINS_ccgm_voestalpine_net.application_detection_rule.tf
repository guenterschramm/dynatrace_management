resource "dynatrace_application_detection_rule" "APPLICATION-0D2E39FAC87814BC_URL_CONTAINS_ccgm_voestalpine_net" {
  application_identifier = "APPLICATION-0D2E39FAC87814BC"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "ccgm.voestalpine.net"
  }
}
