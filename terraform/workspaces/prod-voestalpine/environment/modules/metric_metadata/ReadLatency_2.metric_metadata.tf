resource "dynatrace_metric_metadata" "ReadLatency_2" {
  display_name = "ReadLatency"
  metric_id    = "metric-cloud.aws.docdb.ReadLatency.By.DBInstanceIdentifier"
  unit         = "Seconds"
}
