resource "dynatrace_metric_metadata" "IngestiontoInvocationCompleteLatency" {
  display_name = "IngestiontoInvocationCompleteLatency"
  metric_id    = "metric-cloud.aws.events.IngestiontoInvocationCompleteLatency.By.EventBusName.RuleName"
  unit         = "Milliseconds"
}
