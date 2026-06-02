resource "dynatrace_metric_metadata" "ClientConnections" {
  display_name = "ClientConnections"
  metric_id    = "metric-cloud.aws.efs.ClientConnections.By.FileSystemId"
  unit         = "Count"
}
