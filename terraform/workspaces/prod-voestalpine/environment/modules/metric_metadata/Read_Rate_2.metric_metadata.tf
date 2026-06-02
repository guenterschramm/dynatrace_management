resource "dynatrace_metric_metadata" "Read_Rate_2" {
  description        = "Rate of reading data from the datastore"
  display_name       = "Read Rate"
  metric_id          = "metric-vmware.datastore.datastore.read.average"
  source_entity_type = "vmware:datastore"
  unit               = "KiloBytePerSecond"
}
