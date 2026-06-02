resource "dynatrace_metric_metadata" "SwapUsage" {
  display_name = "SwapUsage"
  metric_id    = "metric-cloud.aws.rds.SwapUsage.By.DBInstanceIdentifier"
  unit         = "Bytes"
}
