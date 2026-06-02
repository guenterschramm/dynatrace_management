resource "dynatrace_metric_metadata" "DeliveryThrottling" {
  display_name = "DeliveryThrottling"
  metric_id    = "metric-cloud.aws.logs.DeliveryThrottling.By.LogGroupName"
  unit         = "Count"
}
