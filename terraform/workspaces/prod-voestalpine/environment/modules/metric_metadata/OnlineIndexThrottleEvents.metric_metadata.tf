resource "dynatrace_metric_metadata" "OnlineIndexThrottleEvents" {
  display_name = "OnlineIndexThrottleEvents"
  metric_id    = "metric-cloud.aws.dynamodb.OnlineIndexThrottleEvents.By.TableName"
  unit         = "Count"
}
