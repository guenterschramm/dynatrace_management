resource "dynatrace_log_timestamp" "environment_Auto-migrated_from_flag_LAConfigUTCAsDefaultContainerTimezone-UTC" {
  enabled           = true
  config_item_title = "Auto-migrated from flag LAConfigUTCAsDefaultContainerTimezone - UTC"
  date_time_pattern = ""
  insert_after      = "vu9U3hXa3q0AAAABAC1idWlsdGluOmxvZ21vbml0b3JpbmcudGltZXN0YW1wLWNvbmZpZ3VyYXRpb24ACkhPU1RfR1JPVVAAEDc2QjU4NTY2MzE4NEM0QzAAJGRhOTU0M2FhLWQ2ZTMtM2M2OC1iNTg0LTY5YjhjMGY5ZTViZr7vVN4V2t6t"
  scope             = "environment"
  timezone          = "Etc/UTC"
  matchers {
    matcher {
      attribute = "dt.entity.container_group"
      operator  = "MATCHES"
      values    = [ "*" ]
    }
  }
}
