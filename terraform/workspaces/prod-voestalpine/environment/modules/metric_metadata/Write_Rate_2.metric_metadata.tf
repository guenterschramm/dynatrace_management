resource "dynatrace_metric_metadata" "Write_Rate_2" {
  description        = "Rate of writing data to the datastore"
  display_name       = "Write Rate"
  metric_id          = "metric-vmware.datastore.datastore.write.average"
  source_entity_type = "vmware:datastore"
  unit               = "KiloBytePerSecond"
}
