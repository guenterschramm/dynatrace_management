resource "dynatrace_metric_metadata" "ForwardedBytes" {
  display_name = "ForwardedBytes"
  metric_id    = "metric-cloud.aws.logs.ForwardedBytes.By.LogGroupName"
  unit         = "Bytes"
}
