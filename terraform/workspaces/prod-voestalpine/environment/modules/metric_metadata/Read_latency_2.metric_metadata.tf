resource "dynatrace_metric_metadata" "Read_Latency_2" {
  description        = "Average amount of time taken during the collection interval to process a SCSI read command issued from the guest OS to the virtual machine"
  display_name       = "Read Latency"
  metric_id          = "metric-vmware.host.disk.totalReadLatency.average"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
