resource "dynatrace_metric_metadata" "VolumeQueueLength_1" {
  display_name = "VolumeQueueLength"
  metric_id    = "metric-cloud.aws.kafka.VolumeQueueLength.By.Broker_ID.Cluster_Name"
  unit         = "Count"
}
