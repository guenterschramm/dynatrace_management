resource "dynatrace_metric_metadata" "ReadThroughput" {
  display_name = "ReadThroughput"
  metric_id    = "metric-cloud.aws.rds.ReadThroughput.By.DBInstanceIdentifier"
  unit         = "BytePerSecond"
}
