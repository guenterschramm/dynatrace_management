resource "dynatrace_metric_metadata" "Write_Latency" {
  display_name       = "Write Latency"
  metric_id          = "metric-vmware.vm.virtualDisk.totalWriteLatency.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "Disk"
      key          = "disk.id"
    }
  }
}
