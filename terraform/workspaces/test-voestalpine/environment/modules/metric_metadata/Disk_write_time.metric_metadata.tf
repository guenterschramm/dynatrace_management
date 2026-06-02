resource "dynatrace_metric_metadata" "Disk_write_time" {
  description  = "Average time of write operation. Shows average disk latency during write."
  display_name = "Disk write time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.latency.write"
  unit         = "MilliSecond"
}
