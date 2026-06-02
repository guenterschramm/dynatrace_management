resource "dynatrace_metric_metadata" "FileServerDiskThroughputUtilization" {
  display_name = "FileServerDiskThroughputUtilization"
  metric_id    = "metric-cloud.aws.fsx.FileServerDiskThroughputUtilization.By.FileSystemId"
  unit         = "Percent"
}
