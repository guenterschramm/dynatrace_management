resource "dynatrace_metric_metadata" "ProvisionedWriteCapacityUnits" {
  display_name = "ProvisionedWriteCapacityUnits"
  metric_id    = "metric-cloud.aws.dynamodb.ProvisionedWriteCapacityUnits.By.TableName"
  unit         = "Count"
}
