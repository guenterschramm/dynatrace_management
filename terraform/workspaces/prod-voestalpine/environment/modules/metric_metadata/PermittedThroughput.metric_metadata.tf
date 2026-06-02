resource "dynatrace_metric_metadata" "PermittedThroughput" {
  display_name = "PermittedThroughput"
  metric_id    = "metric-cloud.aws.efs.PermittedThroughput.By.FileSystemId"
  unit         = "Bytes_Per_Second"
}
