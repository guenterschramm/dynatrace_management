resource "dynatrace_application_detection_rule" "APPLICATION-5F16E8C7D53A0F59_URL_CONTAINS_webservice_voestalpine_root_local_splaw_image" {
  application_identifier = "APPLICATION-5F16E8C7D53A0F59"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "webservice.voestalpine.root.local/splaw_image/"
  }
}
