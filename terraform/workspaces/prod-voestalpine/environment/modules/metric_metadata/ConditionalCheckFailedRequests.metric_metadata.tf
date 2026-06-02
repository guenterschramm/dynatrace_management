resource "dynatrace_metric_metadata" "ConditionalCheckFailedRequests" {
  display_name = "ConditionalCheckFailedRequests"
  metric_id    = "metric-cloud.aws.dynamodb.ConditionalCheckFailedRequests.By.TableName"
  unit         = "Count"
}
