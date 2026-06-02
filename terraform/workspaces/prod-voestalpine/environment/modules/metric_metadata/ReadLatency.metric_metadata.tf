resource "dynatrace_metric_metadata" "ReadLatency" {
  display_name = "ReadLatency"
  metric_id    = "metric-cloud.aws.rds.ReadLatency.By.DBInstanceIdentifier"
  unit         = "Seconds"
}
