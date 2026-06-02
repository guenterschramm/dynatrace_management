resource "dynatrace_metric_metadata" "TotalIOBytes" {
  display_name = "TotalIOBytes"
  metric_id    = "metric-cloud.aws.efs.TotalIOBytes.By.FileSystemId"
  unit         = "Bytes"
}
