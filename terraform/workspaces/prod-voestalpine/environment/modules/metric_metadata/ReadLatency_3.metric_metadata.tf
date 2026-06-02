resource "dynatrace_metric_metadata" "ReadLatency_3" {
  display_name = "ReadLatency"
  metric_id    = "metric-cloud.aws.redshift.ReadLatency.By.ClusterIdentifier"
  unit         = "Milliseconds"
}
