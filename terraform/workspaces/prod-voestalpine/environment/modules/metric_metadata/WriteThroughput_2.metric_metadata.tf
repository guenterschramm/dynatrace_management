resource "dynatrace_metric_metadata" "WriteThroughput_2" {
  display_name = "WriteThroughput"
  metric_id    = "metric-cloud.aws.docdb.WriteThroughput.By.DBInstanceIdentifier"
  unit         = "Bytes/Second"
}
