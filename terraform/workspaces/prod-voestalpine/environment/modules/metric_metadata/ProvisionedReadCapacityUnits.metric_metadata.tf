resource "dynatrace_metric_metadata" "ProvisionedReadCapacityUnits" {
  display_name = "ProvisionedReadCapacityUnits"
  metric_id    = "metric-cloud.aws.dynamodb.ProvisionedReadCapacityUnits.By.TableName"
  unit         = "Count"
}
