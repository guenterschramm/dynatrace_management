resource "dynatrace_metric_metadata" "WriteIOPS" {
  display_name = "WriteIOPS"
  metric_id    = "metric-cloud.aws.rds.WriteIOPS.By.DBInstanceIdentifier"
  unit         = "Count"
}
