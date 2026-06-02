resource "dynatrace_metric_metadata" "DiskWriteBytes" {
  display_name = "DiskWriteBytes"
  metric_id    = "metric-cloud.aws.ec2.DiskWriteBytes.By.InstanceId"
  unit         = "Bytes"
}
