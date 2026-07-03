resource "dynatrace_network_monitor_outage" "MULTIPROTOCOL_MONITOR-EF0B8BBE07C80D77" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  scope                                     = "MULTIPROTOCOL_MONITOR-EF0B8BBE07C80D77"
}
