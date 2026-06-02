resource "dynatrace_metric_metadata" "SystemErrors_1" {
  display_name = "SystemErrors"
  metric_id    = "metric-cloud.aws.dynamodb.SystemErrors.By.Operation.TableName"
  unit         = "Count"
}
