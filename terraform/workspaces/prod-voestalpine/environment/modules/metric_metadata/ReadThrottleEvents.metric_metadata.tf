resource "dynatrace_metric_metadata" "ReadThrottleEvents" {
  display_name = "ReadThrottleEvents"
  metric_id    = "metric-cloud.aws.dynamodb.ReadThrottleEvents.By.TableName"
  unit         = "Count"
}
