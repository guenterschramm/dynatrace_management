resource "dynatrace_metric_metadata" "DeliveryErrors" {
  display_name = "DeliveryErrors"
  metric_id    = "metric-cloud.aws.logs.DeliveryErrors.By.LogGroupName"
  unit         = "Count"
}
