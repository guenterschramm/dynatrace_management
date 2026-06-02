resource "dynatrace_metric_metadata" "Datastore_Used" {
  display_name = "Datastore Used"
  metric_id    = "metric-func:vmware.datastore.used"
  unit         = "Percent"
}
