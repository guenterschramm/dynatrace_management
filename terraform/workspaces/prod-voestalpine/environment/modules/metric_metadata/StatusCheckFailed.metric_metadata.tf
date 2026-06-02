resource "dynatrace_metric_metadata" "StatusCheckFailed" {
  display_name = "StatusCheckFailed"
  metric_id    = "metric-cloud.aws.ec2.StatusCheckFailed.By.InstanceId"
  unit         = "Count"
}
