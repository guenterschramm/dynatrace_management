resource "dynatrace_metric_metadata" "MeteredIOBytes" {
  display_name = "MeteredIOBytes"
  metric_id    = "metric-cloud.aws.efs.MeteredIOBytes.By.FileSystemId"
  unit         = "Bytes"
}
