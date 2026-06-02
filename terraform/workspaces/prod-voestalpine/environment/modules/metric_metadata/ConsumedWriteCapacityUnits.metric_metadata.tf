resource "dynatrace_metric_metadata" "ConsumedWriteCapacityUnits" {
  display_name = "ConsumedWriteCapacityUnits"
  metric_id    = "metric-cloud.aws.dynamodb.ConsumedWriteCapacityUnits.By.TableName"
  unit         = "Count"
}
