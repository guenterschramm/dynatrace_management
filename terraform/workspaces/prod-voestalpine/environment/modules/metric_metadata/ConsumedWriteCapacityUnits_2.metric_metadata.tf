resource "dynatrace_metric_metadata" "ConsumedWriteCapacityUnits_2" {
  display_name = "ConsumedWriteCapacityUnits"
  metric_id    = "metric-cloud.aws.dynamodb.ConsumedWriteCapacityUnits.By.GlobalSecondaryIndexName.TableName"
  unit         = "Count"
}
