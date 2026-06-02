resource "dynatrace_metric_metadata" "Disk_Read_Requests" {
  description        = "Number of disk reads during the collection interval"
  display_name       = "Disk Read Requests"
  metric_id          = "metric-vmware.host.disk.numberRead.summation"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
