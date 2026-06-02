resource "dynatrace_metric_metadata" "Command_latency" {
  description        = "Average amount of time taken during the collection interval to process a SCSI command issued by the guest OS to the virtual machine"
  display_name       = "Command latency"
  metric_id          = "metric-vmware.host.disk.totalLatency.average"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "Disk ID"
      key          = "disk.id"
    }
  }
}
