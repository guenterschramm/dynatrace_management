resource "dynatrace_metric_metadata" "Throughput_Usage" {
  description        = "Datastore Throughput Usage"
  display_name       = "Throughput Usage"
  metric_id          = "metric-vmware.datastore.datastore.throughput.usage.average"
  source_entity_type = "vmware:datastore"
  unit               = "KiloBytePerSecond"
}
