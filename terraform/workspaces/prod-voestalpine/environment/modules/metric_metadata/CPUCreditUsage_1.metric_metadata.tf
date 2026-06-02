resource "dynatrace_metric_metadata" "CPUCreditUsage_1" {
  display_name = "CPUCreditUsage"
  metric_id    = "metric-cloud.aws.ec2.CPUCreditUsage.By.AutoScalingGroupName.InstanceId"
  unit         = "Count"
}
