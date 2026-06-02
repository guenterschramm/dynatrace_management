resource "dynatrace_metric_metadata" "NetworkThroughputUtilization" {
  display_name = "NetworkThroughputUtilization"
  metric_id    = "metric-cloud.aws.fsx.NetworkThroughputUtilization.By.FileSystemId"
  unit         = "Percent"
}
