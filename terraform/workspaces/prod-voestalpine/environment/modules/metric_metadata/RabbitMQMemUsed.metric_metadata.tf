resource "dynatrace_metric_metadata" "RabbitMQMemUsed" {
  display_name = "RabbitMQMemUsed"
  metric_id    = "metric-cloud.aws.amazonmq.RabbitMQMemUsed.By.Broker"
  unit         = "Bytes"
}
