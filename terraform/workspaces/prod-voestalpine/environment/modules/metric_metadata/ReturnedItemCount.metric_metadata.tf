resource "dynatrace_metric_metadata" "ReturnedItemCount" {
  display_name = "ReturnedItemCount"
  metric_id    = "metric-cloud.aws.dynamodb.ReturnedItemCount.By.TableName"
  unit         = "Count"
}
