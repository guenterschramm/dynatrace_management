resource "dynatrace_metric_metadata" "MemoryUtilization_3" {
  display_name = "MemoryUtilization"
  metric_id    = "metric-cloud.aws.kafka_connect.MemoryUtilization.By.ConnectorName"
  unit         = "Percent"
}
