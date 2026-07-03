resource "dynatrace_network_monitor_outage" "MULTIPROTOCOL_MONITOR-44902BABD9F444E4" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  scope                                     = "MULTIPROTOCOL_MONITOR-44902BABD9F444E4"
}
