resource "dynatrace_metric_metadata" "InvocationAttempts" {
  display_name = "InvocationAttempts"
  metric_id    = "metric-cloud.aws.events.InvocationAttempts.By.EventBusName.RuleName"
  unit         = "Count"
}
