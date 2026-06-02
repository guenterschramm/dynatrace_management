resource "dynatrace_metric_metadata" "MemoryUsed" {
  display_name = "MemoryUsed"
  metric_id    = "metric-cloud.aws.kafka.MemoryUsed.By.Broker_ID.Cluster_Name"
  unit         = "Bytes"
}
