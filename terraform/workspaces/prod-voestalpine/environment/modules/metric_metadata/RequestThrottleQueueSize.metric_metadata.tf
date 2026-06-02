resource "dynatrace_metric_metadata" "RequestThrottleQueueSize" {
  display_name = "RequestThrottleQueueSize"
  metric_id    = "metric-cloud.aws.kafka.RequestThrottleQueueSize.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
