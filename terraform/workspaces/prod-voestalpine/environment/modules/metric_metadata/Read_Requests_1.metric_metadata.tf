resource "dynatrace_metric_metadata" "Read_Requests_1" {
  display_name       = "Read Requests"
  metric_id          = "metric-vmware.vm.virtualDisk.numberReadAveraged.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "PerSecond"
  dimensions {
    dimension {
      display_name = "Disk"
      key          = "disk.id"
    }
  }
}
