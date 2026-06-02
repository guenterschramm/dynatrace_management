resource "dynatrace_metric_metadata" "ThrottledRecords" {
  display_name = "ThrottledRecords"
  metric_id    = "metric-cloud.aws.firehose.ThrottledRecords.By.DeliveryStreamName"
  unit         = "Count"
}
