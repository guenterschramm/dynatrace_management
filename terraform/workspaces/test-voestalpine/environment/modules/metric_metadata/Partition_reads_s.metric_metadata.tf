resource "dynatrace_metric_metadata" "Partition_reads_s" {
  description  = "Number of read operations from partition per second"
  display_name = "Partition reads/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.operations.read"
  unit         = "PerSecond"
}
