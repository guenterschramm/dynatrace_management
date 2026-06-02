resource "dynatrace_metric_metadata" "NetworkTransmitThroughput" {
  display_name = "NetworkTransmitThroughput"
  metric_id    = "metric-cloud.aws.rds.NetworkTransmitThroughput.By.DBInstanceIdentifier"
  unit         = "BytePerSecond"
}
