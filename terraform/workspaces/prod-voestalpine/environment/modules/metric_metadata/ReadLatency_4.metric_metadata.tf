resource "dynatrace_metric_metadata" "ReadLatency_4" {
  display_name = "ReadLatency"
  metric_id    = "metric-cloud.aws.redshift.ReadLatency.By.ClusterIdentifier.NodeID"
  unit         = "Milliseconds"
}
