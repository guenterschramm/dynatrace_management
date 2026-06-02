resource "dynatrace_metric_metadata" "HeapUsage" {
  display_name = "HeapUsage"
  metric_id    = "metric-cloud.aws.amazonmq.HeapUsage.By.Broker"
  unit         = "Percent"
}
