resource "dynatrace_metric_metadata" "LeaderCount" {
  display_name = "LeaderCount"
  metric_id    = "metric-cloud.aws.kafka.LeaderCount.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
