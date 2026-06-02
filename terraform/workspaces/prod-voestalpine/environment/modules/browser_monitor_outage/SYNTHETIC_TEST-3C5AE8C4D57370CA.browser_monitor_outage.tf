resource "dynatrace_browser_monitor_outage" "SYNTHETIC_TEST-3C5AE8C4D57370CA" {
  global_consecutive_outage_count_threshold = 2
  global_outages                            = true
  local_outages                             = false
  retry_on_error                            = true
  scope                                     = "SYNTHETIC_TEST-3C5AE8C4D57370CA"
}
