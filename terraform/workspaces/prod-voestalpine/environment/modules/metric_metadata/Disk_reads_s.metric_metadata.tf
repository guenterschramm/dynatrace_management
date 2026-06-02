resource "dynatrace_metric_metadata" "Disk_reads_s" {
  description  = "Number of read operations from device per second"
  display_name = "Disk reads/s"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.disk.operations.read"
  unit         = "PerSecond"
}
