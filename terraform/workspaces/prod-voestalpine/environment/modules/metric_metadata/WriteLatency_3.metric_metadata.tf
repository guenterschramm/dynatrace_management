resource "dynatrace_metric_metadata" "WriteLatency_3" {
  display_name = "WriteLatency"
  metric_id    = "metric-cloud.aws.redshift.WriteLatency.By.ClusterIdentifier"
  unit         = "Milliseconds"
}
