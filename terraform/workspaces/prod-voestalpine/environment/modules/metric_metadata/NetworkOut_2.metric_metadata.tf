resource "dynatrace_metric_metadata" "NetworkOut_2" {
  display_name = "NetworkOut"
  metric_id    = "metric-cloud.aws.ec2.NetworkOut.By.AutoScalingGroupName.InstanceId"
  unit         = "Bytes"
}
