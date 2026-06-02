resource "dynatrace_metric_metadata" "NetworkThroughput_2" {
  display_name = "NetworkThroughput"
  metric_id    = "metric-cloud.aws.docdb.NetworkThroughput.By.DBInstanceIdentifier"
  unit         = "Bytes/Second"
}
