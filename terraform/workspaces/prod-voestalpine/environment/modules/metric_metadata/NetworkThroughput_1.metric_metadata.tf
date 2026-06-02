resource "dynatrace_metric_metadata" "NetworkThroughput_1" {
  display_name = "NetworkThroughput"
  metric_id    = "metric-cloud.aws.docdb.NetworkThroughput.By.DBClusterIdentifier"
  unit         = "Bytes/Second"
}
