resource "dynatrace_metric_metadata" "SubscribeClientError" {
  display_name = "SubscribeClientError"
  metric_id    = "metric-cloud.aws.appsync.SubscribeClientError.By.GraphQLAPIId"
  unit         = "Count"
}
