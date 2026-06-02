resource "dynatrace_metric_metadata" "Volume_queue_length" {
  description  = "Average number of read and write operations in volume queue"
  display_name = "Volume queue length"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.queue.length"
  unit         = "Count"
}
