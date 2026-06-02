resource "dynatrace_metric_metadata" "Disk_writes_s" {
  description  = "Number of write operations to device per second"
  display_name = "Disk writes/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.operations.write"
  unit         = "PerSecond"
}
