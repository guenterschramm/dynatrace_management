resource "dynatrace_metric_metadata" "ReadIOPS" {
  display_name = "ReadIOPS"
  metric_id    = "metric-cloud.aws.rds.ReadIOPS.By.DBInstanceIdentifier"
  unit         = "Count"
}
