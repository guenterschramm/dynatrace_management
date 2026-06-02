resource "dynatrace_metric_metadata" "Disk_I_O_Rate" {
  description        = "Aggregated disk I/O rate. For hosts, this metric includes the rates for all virtual machines running on the host during the collection interval."
  display_name       = "Disk I/O Rate"
  metric_id          = "metric-vmware.host.disk.usage.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
}
