resource "dynatrace_metric_metadata" "Disk_Commands" {
  description        = "Number of SCSI commands issued during the collection interval"
  display_name       = "Disk Commands"
  metric_id          = "metric-vmware.host.disk.commands.summation"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
