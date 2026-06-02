resource "dynatrace_metric_metadata" "ClientConnectionCount" {
  display_name = "ClientConnectionCount"
  metric_id    = "metric-cloud.aws.kafka.ClientConnectionCount.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
