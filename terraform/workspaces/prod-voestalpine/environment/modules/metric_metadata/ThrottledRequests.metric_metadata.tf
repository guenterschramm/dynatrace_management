resource "dynatrace_metric_metadata" "ThrottledRequests" {
  display_name = "ThrottledRequests"
  metric_id    = "metric-cloud.aws.dynamodb.ThrottledRequests.By.TableName"
  unit         = "Count"
}
