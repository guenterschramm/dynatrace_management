resource "dynatrace_application_detection_rule" "APPLICATION-AA58CCA0CF14E59F_URL_CONTAINS_uid_voestalpine_net_kmv" {
  application_identifier = "APPLICATION-AA58CCA0CF14E59F"
  filter_config {
    application_match_target = "URL"
    application_match_type   = "CONTAINS"
    pattern                  = "uid.voestalpine.net/kmv/"
  }
}
