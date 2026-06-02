resource "dynatrace_metric_metadata" "IncomingRecords" {
  display_name = "IncomingRecords"
  metric_id    = "metric-cloud.aws.firehose.IncomingRecords.By.DeliveryStreamName"
  unit         = "Count"
}
