resource "dynatrace_metric_metadata" "EBSIOBalance" {
  display_name = "EBSIOBalance%"
  metric_id    = "metric-cloud.aws.ec2.EBSIOBalance_percentage.By.InstanceId"
  unit         = "Percent"
}
