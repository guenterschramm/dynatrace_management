resource "dynatrace_metric_metadata" "Read_Rate_1" {
  display_name       = "Read Rate"
  metric_id          = "metric-vmware.vm.virtualDisk.read.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Disk"
      key          = "disk.id"
    }
  }
}
