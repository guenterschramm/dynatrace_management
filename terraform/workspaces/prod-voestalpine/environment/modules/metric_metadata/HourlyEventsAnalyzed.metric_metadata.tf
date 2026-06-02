resource "dynatrace_metric_metadata" "HourlyEventsAnalyzed" {
  display_name = "HourlyEventsAnalyzed"
  metric_id    = "metric-cloud.aws.cloudtrail.HourlyEventsAnalyzed.By.TrailName"
  unit         = "Count"
}
