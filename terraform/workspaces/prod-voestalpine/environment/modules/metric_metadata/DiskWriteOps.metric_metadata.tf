resource "dynatrace_metric_metadata" "DiskWriteOps" {
  display_name = "DiskWriteOps"
  metric_id    = "metric-cloud.aws.ec2.DiskWriteOps.By.InstanceId"
  unit         = "Count"
}
