resource "dynatrace_metric_metadata" "Disk_Highest_latency" {
  description        = "Highest latency value across all disks used by the host"
  display_name       = "Disk Highest latency"
  metric_id          = "metric-vmware.vm.disk.maxTotalLatency.latest"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
}
