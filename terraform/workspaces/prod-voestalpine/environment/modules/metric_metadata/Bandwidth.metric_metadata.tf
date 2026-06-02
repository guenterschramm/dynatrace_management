resource "dynatrace_metric_metadata" "Bandwidth" {
  display_name = "Bandwidth"
  metric_id    = "metric-cloud.aws.appstreams.Bandwidth.By.Fleet"
  unit         = "Kilobits/Second"
}
