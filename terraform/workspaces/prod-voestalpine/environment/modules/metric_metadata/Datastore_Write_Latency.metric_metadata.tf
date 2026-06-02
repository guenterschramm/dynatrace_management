resource "dynatrace_metric_metadata" "Datastore_Write_Latency" {
  display_name       = "Datastore Write Latency"
  metric_id          = "metric-vmware.vm.datastore.totalWriteLatency.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "Datastore"
      key          = "datastore"
    }
  }
}
