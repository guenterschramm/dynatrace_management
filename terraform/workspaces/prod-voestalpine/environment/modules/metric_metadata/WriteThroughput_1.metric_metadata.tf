resource "dynatrace_metric_metadata" "WriteThroughput_1" {
  display_name = "WriteThroughput"
  metric_id    = "metric-cloud.aws.docdb.WriteThroughput.By.DBClusterIdentifier"
  unit         = "Bytes/Second"
}
