resource "dynatrace_metric_metadata" "OnlineIndexConsumedWriteCapacity" {
  display_name = "OnlineIndexConsumedWriteCapacity"
  metric_id    = "metric-cloud.aws.dynamodb.OnlineIndexConsumedWriteCapacity.By.TableName"
  unit         = "Count"
}
