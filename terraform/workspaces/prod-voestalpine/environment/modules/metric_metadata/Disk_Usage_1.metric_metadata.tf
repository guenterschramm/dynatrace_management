resource "dynatrace_metric_metadata" "Disk_Usage_1" {
  description        = "Aggregated disk I/O rate. For hosts, this metric includes the rates for all virtual machines running on the host during the collection interval."
  display_name       = "Disk Usage"
  metric_id          = "metric-vmware.vm.disk.usage.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
