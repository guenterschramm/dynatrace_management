resource "dynatrace_metric_metadata" "Datastore_Max_Total_Latency" {
  display_name       = "Datastore Max Total Latency"
  metric_id          = "metric-vmware.vm.datastore.maxTotalLatency.latest"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "Datastore"
      key          = "datastore"
    }
  }
}
