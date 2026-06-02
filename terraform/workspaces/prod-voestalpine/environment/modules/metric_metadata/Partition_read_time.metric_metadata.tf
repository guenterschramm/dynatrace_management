resource "dynatrace_metric_metadata" "Partition_read_time" {
  description  = "Average time of read operation. Shows average partition latency during read."
  display_name = "Partition read time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.latency.read"
  unit         = "MilliSecond"
}
