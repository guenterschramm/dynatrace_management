resource "dynatrace_network_monitor_outage" "MULTIPROTOCOL_MONITOR-E6BB46F6C0B53452" {
  global_consecutive_outage_count_threshold = 2
  global_outages                            = true
  local_outages                             = false
  scope                                     = "MULTIPROTOCOL_MONITOR-E6BB46F6C0B53452"
}
