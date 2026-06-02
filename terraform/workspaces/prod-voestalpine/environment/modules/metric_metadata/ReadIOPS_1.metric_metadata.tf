resource "dynatrace_metric_metadata" "ReadIOPS_1" {
  display_name = "ReadIOPS"
  metric_id    = "metric-cloud.aws.docdb.ReadIOPS.By.DBClusterIdentifier"
  unit         = "Count"
}
