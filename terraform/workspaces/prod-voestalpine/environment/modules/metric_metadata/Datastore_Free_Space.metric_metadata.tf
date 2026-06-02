resource "dynatrace_metric_metadata" "Datastore_Free_Space" {
  display_name        = "Datastore Free Space"
  metric_id           = "metric-vmware.datastore.freeSpace"
  source_entity_type  = "vmware:datastore"
  unit                = "Byte"
  unit_display_format = "binary"
}
