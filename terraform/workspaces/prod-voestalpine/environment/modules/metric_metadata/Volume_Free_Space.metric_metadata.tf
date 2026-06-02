resource "dynatrace_metric_metadata" "Volume_Free_Space" {
  description        = "Free space on the disk, in bytes. This is retrieved by VMware Tools."
  display_name       = "Volume Free Space"
  metric_id          = "metric-vmware.vm.volume.free_space"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "Volume"
      key          = "vm.volume.name"
    }
  }
}
