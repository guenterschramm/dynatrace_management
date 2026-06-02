resource "dynatrace_http_monitor_outage" "HTTP_CHECK-22BAA1112AEDD784" {
  global_consecutive_outage_count_threshold = 2
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-22BAA1112AEDD784"
}
