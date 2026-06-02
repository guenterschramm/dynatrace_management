resource "dynatrace_metric_metadata" "MessageCount_1" {
  display_name = "MessageCount"
  metric_id    = "metric-cloud.aws.amazonmq.MessageCount.By.Broker.Queue.VirtualHost"
  unit         = "Count"
}
