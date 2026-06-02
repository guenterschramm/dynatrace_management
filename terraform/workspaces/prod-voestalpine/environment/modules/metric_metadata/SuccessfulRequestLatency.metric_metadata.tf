resource "dynatrace_metric_metadata" "SuccessfulRequestLatency" {
  display_name = "SuccessfulRequestLatency"
  metric_id    = "metric-cloud.aws.dynamodb.SuccessfulRequestLatency.By.TableName"
  unit         = "Milliseconds"
}
