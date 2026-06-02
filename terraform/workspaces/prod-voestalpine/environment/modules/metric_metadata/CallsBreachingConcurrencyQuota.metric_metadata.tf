resource "dynatrace_metric_metadata" "CallsBreachingConcurrencyQuota" {
  display_name = "CallsBreachingConcurrencyQuota"
  metric_id    = "metric-cloud.aws.connect.CallsBreachingConcurrencyQuota.By.InstanceId.MetricGroup"
  unit         = "Count"
}
