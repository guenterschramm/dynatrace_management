resource "dynatrace_metric_metadata" "IncomingRecords_1" {
  display_name = "IncomingRecords"
  metric_id    = "metric-cloud.aws.kinesisdatastreams.IncomingRecords.By.StreamName"
  unit         = "Count"
}
