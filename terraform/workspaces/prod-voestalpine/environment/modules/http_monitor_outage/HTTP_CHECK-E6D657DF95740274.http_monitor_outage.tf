resource "dynatrace_http_monitor_outage" "HTTP_CHECK-E6D657DF95740274" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  scope                                     = "HTTP_CHECK-E6D657DF95740274"
}
