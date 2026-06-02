resource "dynatrace_metric_metadata" "NetworkOut_1" {
  display_name = "NetworkOut"
  metric_id    = "metric-cloud.aws.amazonmq.NetworkOut.By.Broker"
  unit         = "Bytes"
}
