resource "dynatrace_metric_metadata" "Disk_Write_Requests" {
  description        = "Number of disk writes during the collection interval"
  display_name       = "Disk Write Requests"
  metric_id          = "metric-vmware.host.disk.numberWrite.summation"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
