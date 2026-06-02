resource "dynatrace_metric_metadata" "ReadTime" {
  display_name = "ReadTime"
  metric_id    = "metric-cloud.aws.storagegateway.ReadTime.By.GatewayId.GatewayName"
  unit         = "Milliseconds"
}
