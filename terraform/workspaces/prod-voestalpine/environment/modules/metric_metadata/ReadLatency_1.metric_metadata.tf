resource "dynatrace_metric_metadata" "ReadLatency_1" {
  display_name = "ReadLatency"
  metric_id    = "metric-cloud.aws.docdb.ReadLatency.By.DBClusterIdentifier"
  unit         = "Seconds"
}
