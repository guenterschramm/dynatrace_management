resource "dynatrace_metric_metadata" "Disk_Bus_Resets" {
  description        = "Number of SCSI-bus reset commands issued during the collection interval"
  display_name       = "Disk Bus Resets"
  metric_id          = "metric-vmware.host.disk.busResets.summation.count"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
