resource "dynatrace_metric_metadata" "Disk_Highest_Latency_1" {
  description        = "Highest latency value across all disks used by the host"
  display_name       = "Disk Highest Latency"
  metric_id          = "metric-vmware.host.disk.maxTotalLatency.latest"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
