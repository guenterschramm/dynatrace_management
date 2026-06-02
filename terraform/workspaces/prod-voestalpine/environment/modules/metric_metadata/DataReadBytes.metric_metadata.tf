resource "dynatrace_metric_metadata" "DataReadBytes" {
  display_name = "DataReadBytes"
  metric_id    = "metric-cloud.aws.fsx.DataReadBytes.By.FileSystemId"
  unit         = "Bytes"
}
