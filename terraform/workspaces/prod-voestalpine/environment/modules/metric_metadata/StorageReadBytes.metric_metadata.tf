resource "dynatrace_metric_metadata" "StorageReadBytes" {
  display_name = "StorageReadBytes"
  metric_id    = "metric-cloud.aws.ecs_containerinsights.StorageReadBytes.By.ClusterName"
  unit         = "Bytes"
}
