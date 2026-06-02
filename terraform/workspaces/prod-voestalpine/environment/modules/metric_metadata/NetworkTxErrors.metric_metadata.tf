resource "dynatrace_metric_metadata" "NetworkTxErrors" {
  display_name = "NetworkTxErrors"
  metric_id    = "metric-cloud.aws.kafka.NetworkTxErrors.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
