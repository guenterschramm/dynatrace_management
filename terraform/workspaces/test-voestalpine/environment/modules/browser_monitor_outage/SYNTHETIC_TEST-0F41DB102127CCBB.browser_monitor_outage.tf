resource "dynatrace_browser_monitor_outage" "SYNTHETIC_TEST-0F41DB102127CCBB" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  retry_on_error                            = true
  scope                                     = "SYNTHETIC_TEST-0F41DB102127CCBB"
}
