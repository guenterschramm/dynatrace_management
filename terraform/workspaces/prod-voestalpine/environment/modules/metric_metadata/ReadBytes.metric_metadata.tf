resource "dynatrace_metric_metadata" "ReadBytes" {
  display_name = "ReadBytes"
  metric_id    = "metric-cloud.aws.storagegateway.ReadBytes.By.GatewayId.GatewayName"
  unit         = "Bytes"
}
