resource "dynatrace_metric_metadata" "ConsumedReadCapacityUnits_2" {
  display_name = "ConsumedReadCapacityUnits"
  metric_id    = "metric-cloud.aws.dynamodb.ConsumedReadCapacityUnits.By.GlobalSecondaryIndexName.TableName"
  unit         = "Count"
}
