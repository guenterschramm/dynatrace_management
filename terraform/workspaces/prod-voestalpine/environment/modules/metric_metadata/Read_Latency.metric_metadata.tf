resource "dynatrace_metric_metadata" "Read_Latency" {
  display_name       = "Read Latency"
  metric_id          = "metric-vmware.vm.virtualDisk.totalReadLatency.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "Disk"
      key          = "disk.id"
    }
  }
}
