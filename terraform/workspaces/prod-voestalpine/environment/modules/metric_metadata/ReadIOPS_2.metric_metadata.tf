resource "dynatrace_metric_metadata" "ReadIOPS_2" {
  display_name = "ReadIOPS"
  metric_id    = "metric-cloud.aws.docdb.ReadIOPS.By.DBInstanceIdentifier"
  unit         = "Count"
}
