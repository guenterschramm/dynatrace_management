resource "dynatrace_metric_metadata" "SuccessfulRequestLatency_3" {
  display_name = "SuccessfulRequestLatency"
  metric_id    = "metric-cloud.aws.dynamodb.SuccessfulRequestLatency.By.Operation.TableName"
  unit         = "Milliseconds"
}
