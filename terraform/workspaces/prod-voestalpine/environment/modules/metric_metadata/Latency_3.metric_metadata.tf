resource "dynatrace_metric_metadata" "Latency_3" {
  display_name = "Latency"
  metric_id    = "metric-cloud.aws.appsync.Latency.By.GraphQLAPIId"
  unit         = "Milliseconds"
}
