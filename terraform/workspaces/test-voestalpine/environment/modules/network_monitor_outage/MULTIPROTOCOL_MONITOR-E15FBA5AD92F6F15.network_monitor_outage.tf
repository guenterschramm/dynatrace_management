resource "dynatrace_network_monitor_outage" "MULTIPROTOCOL_MONITOR-E15FBA5AD92F6F15" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  scope                                     = "MULTIPROTOCOL_MONITOR-E15FBA5AD92F6F15"
}
