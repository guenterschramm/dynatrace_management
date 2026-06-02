resource "dynatrace_metric_metadata" "AckRate" {
  display_name = "AckRate"
  metric_id    = "metric-cloud.aws.amazonmq.AckRate.By.Broker"
  unit         = "Count"
}
