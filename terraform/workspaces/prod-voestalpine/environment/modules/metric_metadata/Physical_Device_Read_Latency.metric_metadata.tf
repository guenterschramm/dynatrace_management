resource "dynatrace_metric_metadata" "Physical_Device_Read_Latency" {
  description        = "Average amount of time, in milliseconds, to read from the physical device"
  display_name       = "Physical Device Read Latency"
  metric_id          = "metric-vmware.host.disk.deviceReadLatency.average"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
