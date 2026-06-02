resource "dynatrace_metric_metadata" "Average_Read_Requests_per_second" {
  description        = "Average number of read commands issued per second to the datastore during the collection interval"
  display_name       = "Average Read Requests (per second)"
  metric_id          = "metric-vmware.datastore.datastore.numberReadAveraged.average"
  source_entity_type = "vmware:datastore"
  unit               = "PerSecond"
}
