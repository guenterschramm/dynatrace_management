resource "dynatrace_network_monitor_outage" "MULTIPROTOCOL_MONITOR-D62C9EEE82D802BD" {
  global_consecutive_outage_count_threshold = 2
  global_outages                            = true
  local_outages                             = false
  scope                                     = "MULTIPROTOCOL_MONITOR-D62C9EEE82D802BD"
}
