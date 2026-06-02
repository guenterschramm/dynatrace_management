resource "dynatrace_metric_metadata" "NetworkThroughput" {
  display_name = "NetworkThroughput"
  metric_id    = "metric-cloud.aws.neptune.NetworkThroughput.By.DBClusterIdentifier.Role"
  unit         = "Bytes/Second"
}
