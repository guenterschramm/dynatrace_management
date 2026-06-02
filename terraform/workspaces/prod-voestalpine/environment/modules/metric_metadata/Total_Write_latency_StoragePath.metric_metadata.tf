resource "dynatrace_metric_metadata" "Total_Write_latency_StoragePath" {
  description        = "The average time a write issued on the storage path takes"
  display_name       = "Total Write latency (StoragePath)"
  metric_id          = "metric-vmware.host.storagePath.totalWriteLatency.average"
  source_entity_type = "vmware:host"
  unit               = "Millisecond"
}
