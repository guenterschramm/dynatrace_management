resource "dynatrace_metric_metadata" "SubscribeServerError" {
  display_name = "SubscribeServerError"
  metric_id    = "metric-cloud.aws.appsync.SubscribeServerError.By.GraphQLAPIId"
  unit         = "Count"
}
