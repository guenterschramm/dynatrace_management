resource "dynatrace_metric_metadata" "RunningTaskCount" {
  display_name = "RunningTaskCount"
  metric_id    = "metric-cloud.aws.kafka_connect.RunningTaskCount.By.ConnectorName"
  unit         = "Count"
}
