resource "dynatrace_metric_metadata" "Physical_Device_Write_Latency" {
  description        = "Average amount of time, in milliseconds, to write to the physical device"
  display_name       = "Physical Device Write Latency"
  metric_id          = "metric-vmware.host.disk.deviceWriteLatency.average"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
