resource "dynatrace_metric_metadata" "WriteLatency" {
  display_name = "WriteLatency"
  metric_id    = "metric-cloud.aws.rds.WriteLatency.By.DBInstanceIdentifier"
  unit         = "Seconds"
}
