resource "dynatrace_metric_metadata" "CloudBytesUploaded" {
  display_name = "CloudBytesUploaded"
  metric_id    = "metric-cloud.aws.storagegateway.CloudBytesUploaded.By.GatewayId.GatewayName"
  unit         = "Bytes"
}
