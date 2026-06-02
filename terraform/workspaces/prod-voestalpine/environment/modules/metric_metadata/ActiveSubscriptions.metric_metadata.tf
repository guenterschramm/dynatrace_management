resource "dynatrace_metric_metadata" "ActiveSubscriptions" {
  display_name = "ActiveSubscriptions"
  metric_id    = "metric-cloud.aws.appsync.ActiveSubscriptions.By.GraphQLAPIId"
  unit         = "Count"
}
