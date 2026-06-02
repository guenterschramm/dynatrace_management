resource "dynatrace_metric_metadata" "DesiredCapacity" {
  display_name = "DesiredCapacity"
  metric_id    = "metric-cloud.aws.appstreams.DesiredCapacity.By.Fleet"
  unit         = "Count"
}
