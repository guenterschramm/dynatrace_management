resource "dynatrace_metric_metadata" "IngestiontoInvocationStartLatency" {
  display_name = "IngestiontoInvocationStartLatency"
  metric_id    = "metric-cloud.aws.events.IngestiontoInvocationStartLatency.By.EventBusName.RuleName"
  unit         = "Milliseconds"
}
