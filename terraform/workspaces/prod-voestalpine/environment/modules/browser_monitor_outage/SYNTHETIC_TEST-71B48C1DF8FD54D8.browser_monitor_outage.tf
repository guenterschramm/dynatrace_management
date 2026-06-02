resource "dynatrace_browser_monitor_outage" "SYNTHETIC_TEST-71B48C1DF8FD54D8" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  retry_on_error                            = false
  scope                                     = "SYNTHETIC_TEST-71B48C1DF8FD54D8"
}
