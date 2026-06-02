resource "dynatrace_metric_metadata" "Read_rate" {
  description        = "Average number of kilobytes read from the disk each second during the collection interval"
  display_name       = "Read rate"
  metric_id          = "metric-vmware.vm.disk.read.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
