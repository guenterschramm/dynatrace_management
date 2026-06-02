resource "dynatrace_metric_metadata" "DeliveryToHttpEndpoint_DataFreshness" {
  display_name = "DeliveryToHttpEndpoint.DataFreshness"
  metric_id    = "metric-cloud.aws.firehose.DeliveryToHttpEndpoint.DataFreshness.By.DeliveryStreamName"
  unit         = "Seconds"
}
