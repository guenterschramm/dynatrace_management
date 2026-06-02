resource "dynatrace_metric_metadata" "WriteLatency_1" {
  display_name = "WriteLatency"
  metric_id    = "metric-cloud.aws.docdb.WriteLatency.By.DBClusterIdentifier"
  unit         = "Seconds"
}
