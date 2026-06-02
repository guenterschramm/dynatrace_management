resource "dynatrace_metric_metadata" "lastCheckpointSize" {
  display_name = "lastCheckpointSize"
  metric_id    = "metric-cloud.aws.flink.lastCheckpointSize.By.Application"
  unit         = "Bytes"
}
