resource "dynatrace_http_monitor_outage" "HTTP_CHECK-F117A4206441C777" {
  global_consecutive_outage_count_threshold = 2
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-F117A4206441C777"
}
