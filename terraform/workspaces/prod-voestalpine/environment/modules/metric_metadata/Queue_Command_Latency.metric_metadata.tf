resource "dynatrace_metric_metadata" "Queue_Command_Latency" {
  description        = "Average amount of time spent in the VMkernel queue, per SCSI command, during the collection interval"
  display_name       = "Queue Command Latency"
  metric_id          = "metric-vmware.host.disk.queueLatency.average"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
