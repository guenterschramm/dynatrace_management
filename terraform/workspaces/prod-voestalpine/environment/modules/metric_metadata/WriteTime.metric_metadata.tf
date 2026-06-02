resource "dynatrace_metric_metadata" "WriteTime" {
  display_name = "WriteTime"
  metric_id    = "metric-cloud.aws.storagegateway.WriteTime.By.GatewayId.GatewayName"
  unit         = "Milliseconds"
}
