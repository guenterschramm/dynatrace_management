resource "dynatrace_metric_metadata" "Datastore_Capacity" {
  display_name        = "Datastore Capacity"
  metric_id           = "metric-vmware.datastore.capacity"
  source_entity_type  = "vmware:datastore"
  unit                = "Byte"
  unit_display_format = "binary"
}
