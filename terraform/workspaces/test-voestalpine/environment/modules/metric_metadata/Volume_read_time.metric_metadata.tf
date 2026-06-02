resource "dynatrace_metric_metadata" "Volume_read_time" {
  description  = "Average time of read operation. Shows average volume latency during read."
  display_name = "Volume read time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.latency.read"
  unit         = "MilliSecond"
}
