resource "dynatrace_metric_metadata" "SystemErrors" {
  display_name = "SystemErrors"
  metric_id    = "metric-cloud.aws.dynamodb.SystemErrors.By.TableName"
  unit         = "Count"
}
