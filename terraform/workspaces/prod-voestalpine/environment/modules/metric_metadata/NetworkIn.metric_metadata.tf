resource "dynatrace_metric_metadata" "NetworkIn" {
  display_name = "NetworkIn"
  metric_id    = "metric-cloud.aws.ec2.NetworkIn.By.InstanceId"
  unit         = "Bytes"
}
