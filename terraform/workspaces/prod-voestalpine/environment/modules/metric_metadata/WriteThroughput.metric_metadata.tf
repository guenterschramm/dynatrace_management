resource "dynatrace_metric_metadata" "WriteThroughput" {
  display_name = "WriteThroughput"
  metric_id    = "metric-cloud.aws.rds.WriteThroughput.By.DBInstanceIdentifier"
  unit         = "BytePerSecond"
}
