resource "dynatrace_metric_metadata" "RetryInvocationAttempts" {
  display_name = "RetryInvocationAttempts"
  metric_id    = "metric-cloud.aws.events.RetryInvocationAttempts.By.EventBusName.RuleName"
  unit         = "Count"
}
