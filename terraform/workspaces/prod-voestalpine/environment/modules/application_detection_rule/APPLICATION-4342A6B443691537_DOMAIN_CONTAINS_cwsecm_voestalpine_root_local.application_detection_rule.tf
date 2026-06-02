resource "dynatrace_application_detection_rule" "APPLICATION-4342A6B443691537_DOMAIN_CONTAINS_cwsecm_voestalpine_root_local" {
  application_identifier = "APPLICATION-4342A6B443691537"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "CONTAINS"
    pattern                  = "cwsecm.voestalpine.root.local"
  }
}
