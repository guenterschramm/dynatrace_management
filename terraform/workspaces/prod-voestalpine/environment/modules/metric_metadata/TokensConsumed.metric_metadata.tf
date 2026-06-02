resource "dynatrace_metric_metadata" "TokensConsumed" {
  display_name = "TokensConsumed"
  metric_id    = "metric-cloud.aws.appsync.TokensConsumed.By.GraphQLAPIId"
  unit         = "Count"
}
