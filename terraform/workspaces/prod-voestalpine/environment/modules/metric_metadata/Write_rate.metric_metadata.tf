resource "dynatrace_metric_metadata" "Write_rate" {
  description        = "Average number of kilobytes written from the disk each second during the collection interval"
  display_name       = "Write rate"
  metric_id          = "metric-vmware.vm.disk.write.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
