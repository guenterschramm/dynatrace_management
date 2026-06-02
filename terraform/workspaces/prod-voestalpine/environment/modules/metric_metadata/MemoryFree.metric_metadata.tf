resource "dynatrace_metric_metadata" "MemoryFree" {
  display_name = "MemoryFree"
  metric_id    = "metric-cloud.aws.kafka.MemoryFree.By.Broker_ID.Cluster_Name"
  unit         = "Bytes"
}
