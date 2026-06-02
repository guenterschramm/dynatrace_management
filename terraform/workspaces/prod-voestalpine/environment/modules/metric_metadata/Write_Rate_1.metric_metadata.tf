resource "dynatrace_metric_metadata" "Write_Rate_1" {
  display_name       = "Write Rate"
  metric_id          = "metric-vmware.vm.virtualDisk.write.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Disk"
      key          = "disk.id"
    }
  }
}
