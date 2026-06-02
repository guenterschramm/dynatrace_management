resource "dynatrace_metric_metadata" "GlobalTopicCount" {
  display_name = "GlobalTopicCount"
  metric_id    = "metric-cloud.aws.kafka.GlobalTopicCount.By.Cluster_Name"
  unit         = "Count"
}
