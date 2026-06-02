resource "dynatrace_metric_metadata" "ZooKeeperRequestLatencyMsMean" {
  display_name = "ZooKeeperRequestLatencyMsMean"
  metric_id    = "metric-cloud.aws.kafka.ZooKeeperRequestLatencyMsMean.By.Cluster_Name"
  unit         = "Milliseconds"
}
