resource "dynatrace_browser_monitor_outage" "SYNTHETIC_TEST-1A8EE5A12BBB73B2" {
  global_consecutive_outage_count_threshold = 2
  global_outages                            = true
  local_consecutive_outage_count_threshold  = 3
  local_location_outage_count_threshold     = 1
  local_outages                             = true
  retry_on_error                            = true
  scope                                     = "SYNTHETIC_TEST-1A8EE5A12BBB73B2"
}
