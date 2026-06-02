resource "dynatrace_metric_metadata" "WriteBytes" {
  display_name = "WriteBytes"
  metric_id    = "metric-cloud.aws.storagegateway.WriteBytes.By.GatewayId.GatewayName"
  unit         = "Bytes"
}
