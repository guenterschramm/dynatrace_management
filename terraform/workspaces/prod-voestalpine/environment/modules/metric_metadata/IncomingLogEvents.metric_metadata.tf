resource "dynatrace_metric_metadata" "IncomingLogEvents" {
  display_name = "IncomingLogEvents"
  metric_id    = "metric-cloud.aws.logs.IncomingLogEvents.By.LogGroupName"
  unit         = "Count"
}
