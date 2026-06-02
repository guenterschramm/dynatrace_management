resource "dynatrace_metric_metadata" "TransactionConflict" {
  display_name = "TransactionConflict"
  metric_id    = "metric-cloud.aws.dynamodb.TransactionConflict.By.TableName"
  unit         = "Count"
}
