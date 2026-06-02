resource "dynatrace_application_detection_rule" "APPLICATION-4342A6B443691537_DOMAIN_BEGINS_WITH_2217asecm" {
  application_identifier = "APPLICATION-4342A6B443691537"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "BEGINS_WITH"
    pattern                  = "2217asecm"
  }
}
