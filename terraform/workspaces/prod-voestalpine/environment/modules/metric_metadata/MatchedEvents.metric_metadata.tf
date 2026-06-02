resource "dynatrace_metric_metadata" "MatchedEvents" {
  display_name = "MatchedEvents"
  metric_id    = "metric-cloud.aws.events.MatchedEvents.By.EventBusName.RuleName"
  unit         = "Count"
}
