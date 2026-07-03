resource "dynatrace_network_monitor_outage" "MULTIPROTOCOL_MONITOR-554369B626C5E359" {
  global_consecutive_outage_count_threshold = 1
  global_outages                            = true
  local_outages                             = false
  scope                                     = "MULTIPROTOCOL_MONITOR-554369B626C5E359"
}
