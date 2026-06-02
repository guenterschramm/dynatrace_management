resource "dynatrace_metric_metadata" "WorkerCount" {
  display_name = "WorkerCount"
  metric_id    = "metric-cloud.aws.kafka_connect.WorkerCount.By.ConnectorName"
  unit         = "Count"
}
