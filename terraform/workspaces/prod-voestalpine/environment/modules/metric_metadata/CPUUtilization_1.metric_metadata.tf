resource "dynatrace_metric_metadata" "CPUUtilization_1" {
  display_name = "CPUUtilization"
  metric_id    = "metric-cloud.aws.ec2.CPUUtilization.By.InstanceId"
  unit         = "Percent"
}
