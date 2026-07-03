resource "dynatrace_network_monitor_outage" "MULTIPROTOCOL_MONITOR-D4657B60FC7B6220" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  scope                                     = "MULTIPROTOCOL_MONITOR-D4657B60FC7B6220"
}
