resource "dynatrace_metric_metadata" "apiserver_storage_size_bytes" {
  display_name = "apiserver_storage_size_bytes"
  metric_id    = "metric-cloud.aws.eks.apiserver_storage_size_bytes.By.ClusterName"
  unit         = "Bytes"
}
