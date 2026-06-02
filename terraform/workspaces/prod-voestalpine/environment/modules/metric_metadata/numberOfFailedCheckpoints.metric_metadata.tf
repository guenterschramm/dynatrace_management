resource "dynatrace_metric_metadata" "numberOfFailedCheckpoints" {
  display_name = "numberOfFailedCheckpoints"
  metric_id    = "metric-cloud.aws.flink.numberOfFailedCheckpoints.By.Application"
  unit         = "Count"
}
