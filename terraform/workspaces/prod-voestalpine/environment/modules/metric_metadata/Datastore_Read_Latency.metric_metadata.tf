resource "dynatrace_metric_metadata" "Datastore_Read_Latency" {
  display_name       = "Datastore Read Latency"
  metric_id          = "metric-vmware.vm.datastore.totalReadLatency.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "Datastore"
      key          = "datastore"
    }
  }
}
