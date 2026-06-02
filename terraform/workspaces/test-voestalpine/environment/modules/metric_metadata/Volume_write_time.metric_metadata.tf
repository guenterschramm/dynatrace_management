resource "dynatrace_metric_metadata" "Volume_write_time" {
  description  = "Average time of write operation. Shows average volume latency during write."
  display_name = "Volume write time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.latency.write"
  unit         = "MilliSecond"
}
