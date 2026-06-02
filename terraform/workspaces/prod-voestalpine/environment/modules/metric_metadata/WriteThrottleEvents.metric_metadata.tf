resource "dynatrace_metric_metadata" "WriteThrottleEvents" {
  display_name = "WriteThrottleEvents"
  metric_id    = "metric-cloud.aws.dynamodb.WriteThrottleEvents.By.TableName"
  unit         = "Count"
}
