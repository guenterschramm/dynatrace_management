resource "dynatrace_metric_metadata" "ThrottledRequests_1" {
  display_name = "ThrottledRequests"
  metric_id    = "metric-cloud.aws.dynamodb.ThrottledRequests.By.Operation.TableName"
  unit         = "Count"
}
