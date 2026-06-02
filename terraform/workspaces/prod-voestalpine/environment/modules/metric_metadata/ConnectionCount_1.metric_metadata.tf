resource "dynatrace_metric_metadata" "ConnectionCount_1" {
  display_name = "ConnectionCount"
  metric_id    = "metric-cloud.aws.kafka.ConnectionCount.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
