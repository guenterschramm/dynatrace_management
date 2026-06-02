resource "dynatrace_metric_metadata" "Throughput_Contention" {
  display_name       = "Throughput Contention"
  metric_id          = "metric-vmware.vm.virtualDisk.throughput.cont.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "Disk"
      key          = "disk.id"
    }
  }
}
