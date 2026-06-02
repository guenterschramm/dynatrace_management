resource "dynatrace_metric_metadata" "ReturnedItemCount_1" {
  display_name = "ReturnedItemCount"
  metric_id    = "metric-cloud.aws.dynamodb.ReturnedItemCount.By.Operation.TableName"
  unit         = "Count"
}
