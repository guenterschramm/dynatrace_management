resource "dynatrace_metric_metadata" "Queue_Write_Latency" {
  description        = "Average amount of time spent in the VMkernel queue, per SCSI write command, during the collection interval"
  display_name       = "Queue Write Latency"
  metric_id          = "metric-vmware.host.disk.queueWriteLatency.average"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
