resource "dynatrace_metric_metadata" "Volume_Capacity" {
  description        = "Total capacity of the disk, in bytes. This is part of the virtual machine configuration."
  display_name       = "Volume Capacity"
  metric_id          = "metric-vmware.vm.volume.capacity"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "Volume"
      key          = "vm.volume.name"
    }
  }
}
