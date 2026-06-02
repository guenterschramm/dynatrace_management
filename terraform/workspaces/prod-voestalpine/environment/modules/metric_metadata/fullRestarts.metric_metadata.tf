resource "dynatrace_metric_metadata" "fullRestarts" {
  display_name = "fullRestarts"
  metric_id    = "metric-cloud.aws.flink.fullRestarts.By.Application"
  unit         = "Count"
}
