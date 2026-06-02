resource "dynatrace_metric_metadata" "RabbitMQDiskFree_1" {
  display_name = "RabbitMQDiskFree"
  metric_id    = "metric-cloud.aws.amazonmq.RabbitMQDiskFree.By.Broker.Node"
  unit         = "Bytes"
}
