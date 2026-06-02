resource "dynatrace_metric_metadata" "Throughput_Contention_1" {
  description        = "Datastore Throughput Contention"
  display_name       = "Throughput Contention"
  metric_id          = "metric-vmware.datastore.datastore.throughput.contention.average"
  source_entity_type = "vmware:datastore"
  unit               = "MilliSecond"
}
