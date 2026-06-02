resource "dynatrace_metric_metadata" "StorageUsed" {
  display_name = "StorageUsed"
  metric_id    = "metric-cloud.aws.kafka.StorageUsed.By.Cluster_Name"
  unit         = "Bytes"
}
