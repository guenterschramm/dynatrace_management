resource "dynatrace_metric_metadata" "IncomingBytes" {
  display_name = "IncomingBytes"
  metric_id    = "metric-cloud.aws.logs.IncomingBytes.By.LogGroupName"
  unit         = "Bytes"
}
