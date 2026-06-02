resource "dynatrace_http_monitor_outage" "HTTP_CHECK-4760A87AE03DCC95" {
  global_consecutive_outage_count_threshold = 2
  global_outages                            = true
  local_consecutive_outage_count_threshold  = 2
  local_location_outage_count_threshold     = 3
  local_outages                             = true
  scope                                     = "HTTP_CHECK-4760A87AE03DCC95"
}
