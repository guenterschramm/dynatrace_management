resource "dynatrace_metric_metadata" "Total_Write_latency" {
  description        = "Average amount of time taken during the collection interval to process a SCSI write command issued by the guest OS to the virtual machine"
  display_name       = "Total Write latency"
  metric_id          = "metric-vmware.vm.disk.totalWriteLatency.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Millisecond"
}
