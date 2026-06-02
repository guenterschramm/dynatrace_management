resource "dynatrace_metric_metadata" "Volume_writes_s" {
  description  = "Number of write operations to volume per second"
  display_name = "Volume writes/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.operations.write"
  unit         = "PerSecond"
}
