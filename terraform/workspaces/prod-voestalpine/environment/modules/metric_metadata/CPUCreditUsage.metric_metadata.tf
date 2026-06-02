resource "dynatrace_metric_metadata" "CPUCreditUsage" {
  display_name = "CPUCreditUsage"
  metric_id    = "metric-cloud.aws.ec2.CPUCreditUsage.By.InstanceId"
  unit         = "Count"
}
