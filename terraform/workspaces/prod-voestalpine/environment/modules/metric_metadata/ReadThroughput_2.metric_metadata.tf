resource "dynatrace_metric_metadata" "ReadThroughput_2" {
  display_name = "ReadThroughput"
  metric_id    = "metric-cloud.aws.docdb.ReadThroughput.By.DBInstanceIdentifier"
  unit         = "Bytes/Second"
}
