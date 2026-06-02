resource "dynatrace_metric_metadata" "IngestionToInvocationSuccessLatency" {
  display_name = "IngestionToInvocationSuccessLatency"
  metric_id    = "metric-cloud.aws.events.IngestionToInvocationSuccessLatency.By.EventBusName.RuleName"
  unit         = "Milliseconds"
}
