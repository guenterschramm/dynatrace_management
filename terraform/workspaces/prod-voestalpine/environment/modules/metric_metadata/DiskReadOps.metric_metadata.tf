resource "dynatrace_metric_metadata" "DiskReadOps" {
  display_name = "DiskReadOps"
  metric_id    = "metric-cloud.aws.ec2.DiskReadOps.By.InstanceId"
  unit         = "Count"
}
