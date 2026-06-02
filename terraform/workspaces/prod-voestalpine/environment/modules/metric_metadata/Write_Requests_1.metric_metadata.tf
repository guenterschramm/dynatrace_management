resource "dynatrace_metric_metadata" "Write_Requests_1" {
  display_name       = "Write Requests"
  metric_id          = "metric-vmware.vm.virtualDisk.numberWriteAveraged.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "PerSecond"
  dimensions {
    dimension {
      display_name = "Disk"
      key          = "disk.id"
    }
  }
}
