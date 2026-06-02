resource "dynatrace_metric_metadata" "Disk_queue_length" {
  description  = "Average number of read and write operations in disk queue"
  display_name = "Disk queue length"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.queue.length"
  unit         = "Count"
}
