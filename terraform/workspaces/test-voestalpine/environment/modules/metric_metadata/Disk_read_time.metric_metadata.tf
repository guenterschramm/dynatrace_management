resource "dynatrace_metric_metadata" "Disk_read_time" {
  description  = "Average time of read operation. Shows average disk latency during read."
  display_name = "Disk read time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.latency.read"
  unit         = "MilliSecond"
}
