resource "dynatrace_metric_metadata" "EBSReadBytes" {
  display_name = "EBSReadBytes"
  metric_id    = "metric-cloud.aws.ec2.EBSReadBytes.By.InstanceId"
  unit         = "Bytes"
}
