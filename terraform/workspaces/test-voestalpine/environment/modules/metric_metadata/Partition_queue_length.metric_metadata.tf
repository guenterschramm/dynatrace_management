resource "dynatrace_metric_metadata" "Partition_queue_length" {
  description  = "Average number of read and write operations in partition queue"
  display_name = "Partition queue length"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.partition.queue.length"
  unit         = "Count"
}
