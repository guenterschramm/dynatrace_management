resource "dynatrace_metric_metadata" "WriteLatency_4" {
  display_name = "WriteLatency"
  metric_id    = "metric-cloud.aws.redshift.WriteLatency.By.ClusterIdentifier.NodeID"
  unit         = "Milliseconds"
}
