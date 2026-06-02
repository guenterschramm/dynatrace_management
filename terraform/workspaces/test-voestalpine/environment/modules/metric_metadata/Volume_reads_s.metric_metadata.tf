resource "dynatrace_metric_metadata" "Volume_reads_s" {
  description  = "Number of read operations from volume per second"
  display_name = "Volume reads/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.operations.read"
  unit         = "PerSecond"
}
