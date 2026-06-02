resource "dynatrace_metric_metadata" "Requests" {
  display_name = "Requests"
  metric_id    = "metric-cloud.aws.appsync.Requests.By.GraphQLAPIId"
  unit         = "Count"
}
