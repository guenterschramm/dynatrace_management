resource "dynatrace_metric_metadata" "ErroredTaskCount" {
  display_name = "ErroredTaskCount"
  metric_id    = "metric-cloud.aws.kafka_connect.ErroredTaskCount.By.ConnectorName"
  unit         = "Count"
}
