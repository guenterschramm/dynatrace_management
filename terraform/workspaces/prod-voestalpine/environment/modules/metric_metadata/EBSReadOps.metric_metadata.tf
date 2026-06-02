resource "dynatrace_metric_metadata" "EBSReadOps" {
  display_name = "EBSReadOps"
  metric_id    = "metric-cloud.aws.ec2.EBSReadOps.By.InstanceId"
  unit         = "Count"
}
