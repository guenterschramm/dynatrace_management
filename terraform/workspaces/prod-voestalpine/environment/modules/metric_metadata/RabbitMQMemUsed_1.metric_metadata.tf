resource "dynatrace_metric_metadata" "RabbitMQMemUsed_1" {
  display_name = "RabbitMQMemUsed"
  metric_id    = "metric-cloud.aws.amazonmq.RabbitMQMemUsed.By.Broker.Node"
  unit         = "Bytes"
}
