resource "dynatrace_metric_metadata" "SwapUsed" {
  display_name = "SwapUsed"
  metric_id    = "metric-cloud.aws.kafka.SwapUsed.By.Broker_ID.Cluster_Name"
  unit         = "Bytes"
}
