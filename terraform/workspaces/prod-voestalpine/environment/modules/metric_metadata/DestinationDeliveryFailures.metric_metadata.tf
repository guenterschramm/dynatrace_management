resource "dynatrace_metric_metadata" "DestinationDeliveryFailures" {
  display_name = "DestinationDeliveryFailures"
  metric_id    = "metric-cloud.aws.lambda.DestinationDeliveryFailures.By.FunctionName"
  unit         = "Count"
}
