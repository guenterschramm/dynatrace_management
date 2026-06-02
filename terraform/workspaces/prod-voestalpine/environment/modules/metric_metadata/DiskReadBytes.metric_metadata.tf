resource "dynatrace_metric_metadata" "DiskReadBytes" {
  display_name = "DiskReadBytes"
  metric_id    = "metric-cloud.aws.ec2.DiskReadBytes.By.InstanceId"
  unit         = "Bytes"
}
