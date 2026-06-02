resource "dynatrace_metric_metadata" "StorageWriteBytes" {
  display_name = "StorageWriteBytes"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.StorageWriteBytes.By.ClusterName"
  unit         = "Bytes"
}
