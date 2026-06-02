resource "dynatrace_metric_metadata" "WriteLatency_2" {
  display_name = "WriteLatency"
  metric_id    = "metric-cloud.aws.docdb.WriteLatency.By.DBInstanceIdentifier"
  unit         = "Seconds"
}
