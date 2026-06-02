resource "dynatrace_metric_metadata" "Partition_writes_s" {
  description  = "Number of write operations to partition per second"
  display_name = "Partition writes/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.operations.write"
  unit         = "PerSecond"
}
