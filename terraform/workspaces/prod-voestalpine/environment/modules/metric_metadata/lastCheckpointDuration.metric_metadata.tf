resource "dynatrace_metric_metadata" "lastCheckpointDuration" {
  display_name = "lastCheckpointDuration"
  metric_id    = "metric-cloud.aws.flink.lastCheckpointDuration.By.Application"
  unit         = "Milliseconds"
}
