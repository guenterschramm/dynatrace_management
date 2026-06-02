resource "dynatrace_metric_metadata" "ThrottledRules" {
  display_name = "ThrottledRules"
  metric_id    = "metric-cloud.aws.events.ThrottledRules.By.EventBusName.RuleName"
  unit         = "Count"
}
