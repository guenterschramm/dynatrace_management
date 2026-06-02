resource "dynatrace_metric_metadata" "ForwardedLogEvents" {
  display_name = "ForwardedLogEvents"
  metric_id    = "metric-cloud.aws.logs.ForwardedLogEvents.By.LogGroupName"
  unit         = "Count"
}
