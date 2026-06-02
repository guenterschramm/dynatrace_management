resource "dynatrace_metric_metadata" "NetworkIn_2" {
  display_name = "NetworkIn"
  metric_id    = "metric-cloud.aws.ec2.NetworkIn.By.AutoScalingGroupName.InstanceId"
  unit         = "Bytes"
}
