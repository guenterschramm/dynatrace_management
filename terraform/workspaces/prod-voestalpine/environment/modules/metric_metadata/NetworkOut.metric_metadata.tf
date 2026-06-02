resource "dynatrace_metric_metadata" "NetworkOut" {
  display_name = "NetworkOut"
  metric_id    = "metric-cloud.aws.ec2.NetworkOut.By.InstanceId"
  unit         = "Bytes"
}
