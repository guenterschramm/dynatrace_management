resource "dynatrace_metric_metadata" "DataWriteBytes" {
  display_name = "DataWriteBytes"
  metric_id    = "metric-cloud.aws.fsx.DataWriteBytes.By.FileSystemId"
  unit         = "Bytes"
}
