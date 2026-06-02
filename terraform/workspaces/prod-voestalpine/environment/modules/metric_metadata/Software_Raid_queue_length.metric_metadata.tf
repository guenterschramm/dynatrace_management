resource "dynatrace_metric_metadata" "Software_Raid_queue_length" {
  description  = "Average number of read and write operations in Software Raid queue"
  display_name = "Software Raid queue length"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.queue.length"
  unit         = "Count"
}
