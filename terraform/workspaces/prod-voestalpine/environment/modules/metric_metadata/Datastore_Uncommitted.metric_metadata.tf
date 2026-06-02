resource "dynatrace_metric_metadata" "Datastore_Uncommitted" {
  display_name        = "Datastore Uncommitted"
  metric_id           = "metric-vmware.datastore.uncommitted"
  source_entity_type  = "vmware:datastore"
  unit                = "Byte"
  unit_display_format = "binary"
}
