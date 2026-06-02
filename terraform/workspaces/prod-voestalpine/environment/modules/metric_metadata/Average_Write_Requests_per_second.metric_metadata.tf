resource "dynatrace_metric_metadata" "Average_Write_Requests_per_second" {
  description        = "Average number of write commands issued per second to the datastore during the collection interval"
  display_name       = "Average Write Requests (per second)"
  metric_id          = "metric-vmware.datastore.datastore.numberWriteAveraged.average"
  source_entity_type = "vmware:datastore"
  unit               = "PerSecond"
}
