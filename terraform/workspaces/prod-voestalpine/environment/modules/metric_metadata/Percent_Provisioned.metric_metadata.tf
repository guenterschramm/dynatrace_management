resource "dynatrace_metric_metadata" "Percent_Provisioned" {
  display_name = "Percent Provisioned"
  metric_id    = "metric-func:vmware.datastore.disk.percent_provisioned"
  unit         = "Percent"
}
