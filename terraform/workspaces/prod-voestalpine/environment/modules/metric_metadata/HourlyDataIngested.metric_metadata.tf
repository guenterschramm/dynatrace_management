resource "dynatrace_metric_metadata" "HourlyDataIngested" {
  display_name = "HourlyDataIngested"
  metric_id    = "metric-cloud.aws.cloudtrail.HourlyDataIngested.By.TrailName"
  unit         = "Bytes"
}
