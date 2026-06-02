resource "dynatrace_metric_metadata" "Partition_write_time" {
  description  = "Average time of write operation. Shows average partition latency during write."
  display_name = "Partition write time"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.latency.write"
  unit         = "MilliSecond"
}
