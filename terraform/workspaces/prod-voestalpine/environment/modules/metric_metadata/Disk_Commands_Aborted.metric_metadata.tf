resource "dynatrace_metric_metadata" "Disk_Commands_Aborted" {
  description        = "Number of SCSI commands aborted during the collection interval"
  display_name       = "Disk Commands Aborted"
  metric_id          = "metric-vmware.host.disk.commandsAborted.summation"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
