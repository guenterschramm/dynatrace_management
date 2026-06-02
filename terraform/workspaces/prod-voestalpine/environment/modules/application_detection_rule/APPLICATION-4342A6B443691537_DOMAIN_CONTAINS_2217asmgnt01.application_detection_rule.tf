resource "dynatrace_application_detection_rule" "APPLICATION-4342A6B443691537_DOMAIN_CONTAINS_2217asmgnt01" {
  application_identifier = "APPLICATION-4342A6B443691537"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "CONTAINS"
    pattern                  = "2217asmgnt01"
  }
}
