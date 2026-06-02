resource "dynatrace_metric_metadata" "NetworkReceiveThroughput" {
  display_name = "NetworkReceiveThroughput"
  metric_id    = "metric-cloud.aws.rds.NetworkReceiveThroughput.By.DBInstanceIdentifier"
  unit         = "BytePerSecond"
}
