resource "dynatrace_metric_metadata" "Write_latency_1" {
  description        = "Average amount of time taken during the collection interval to process a SCSI write command issued by the guest OS to the virtual machine"
  display_name       = "Write latency"
  metric_id          = "metric-vmware.host.disk.totalWriteLatency.average"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
