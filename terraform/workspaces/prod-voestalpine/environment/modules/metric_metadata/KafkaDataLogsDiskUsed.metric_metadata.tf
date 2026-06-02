resource "dynatrace_metric_metadata" "KafkaDataLogsDiskUsed" {
  display_name = "KafkaDataLogsDiskUsed"
  metric_id    = "metric-cloud.aws.kafka.KafkaDataLogsDiskUsed.By.Broker_ID.Cluster_Name"
  unit         = "Percent"
}
