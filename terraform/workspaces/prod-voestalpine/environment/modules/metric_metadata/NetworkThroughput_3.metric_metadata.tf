resource "dynatrace_metric_metadata" "NetworkThroughput_3" {
  display_name = "NetworkThroughput"
  metric_id    = "metric-cloud.aws.neptune.NetworkThroughput.By.DBClusterIdentifier"
  unit         = "Bytes/Second"
}
