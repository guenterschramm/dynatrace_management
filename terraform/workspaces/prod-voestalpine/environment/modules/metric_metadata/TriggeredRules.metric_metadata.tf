resource "dynatrace_metric_metadata" "TriggeredRules" {
  display_name = "TriggeredRules"
  metric_id    = "metric-cloud.aws.events.TriggeredRules.By.EventBusName.RuleName"
  unit         = "Count"
}
