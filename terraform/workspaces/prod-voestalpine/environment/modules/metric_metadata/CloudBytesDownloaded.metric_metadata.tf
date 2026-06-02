resource "dynatrace_metric_metadata" "CloudBytesDownloaded" {
  display_name = "CloudBytesDownloaded"
  metric_id    = "metric-cloud.aws.storagegateway.CloudBytesDownloaded.By.GatewayId.GatewayName"
  unit         = "Bytes"
}
