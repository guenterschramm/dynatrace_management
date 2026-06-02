resource "dynatrace_metric_metadata" "ReadThroughput_1" {
  display_name = "ReadThroughput"
  metric_id    = "metric-cloud.aws.docdb.ReadThroughput.By.DBClusterIdentifier"
  unit         = "Bytes/Second"
}
