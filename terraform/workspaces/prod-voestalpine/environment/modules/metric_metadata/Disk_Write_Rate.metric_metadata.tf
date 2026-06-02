resource "dynatrace_metric_metadata" "Disk_Write_Rate" {
  description        = "Average number of kilobytes written to disk each second during the collection interval"
  display_name       = "Disk Write Rate"
  metric_id          = "metric-vmware.host.disk.write.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
}
