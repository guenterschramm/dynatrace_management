resource "dynatrace_metric_metadata" "ConsumedReadCapacityUnits" {
  display_name = "ConsumedReadCapacityUnits"
  metric_id    = "metric-cloud.aws.dynamodb.ConsumedReadCapacityUnits.By.TableName"
  unit         = "Count"
}
