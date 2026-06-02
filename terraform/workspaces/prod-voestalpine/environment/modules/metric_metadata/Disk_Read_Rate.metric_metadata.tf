resource "dynatrace_metric_metadata" "Disk_Read_Rate" {
  description        = "Average number of kilobytes read from the disk each second during the collection interval"
  display_name       = "Disk Read Rate"
  metric_id          = "metric-vmware.host.disk.read.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
}
