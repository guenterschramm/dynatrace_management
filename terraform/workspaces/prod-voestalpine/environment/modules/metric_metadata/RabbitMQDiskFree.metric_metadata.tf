resource "dynatrace_metric_metadata" "RabbitMQDiskFree" {
  display_name = "RabbitMQDiskFree"
  metric_id    = "metric-cloud.aws.amazonmq.RabbitMQDiskFree.By.Broker"
  unit         = "Bytes"
}
