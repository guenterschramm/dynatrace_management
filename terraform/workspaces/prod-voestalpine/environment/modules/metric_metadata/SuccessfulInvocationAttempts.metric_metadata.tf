resource "dynatrace_metric_metadata" "SuccessfulInvocationAttempts" {
  display_name = "SuccessfulInvocationAttempts"
  metric_id    = "metric-cloud.aws.events.SuccessfulInvocationAttempts.By.EventBusName.RuleName"
  unit         = "Count"
}
