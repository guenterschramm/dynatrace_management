resource "dynatrace_metric_metadata" "ActiveConnections_1" {
  display_name = "ActiveConnections"
  metric_id    = "metric-cloud.aws.appsync.ActiveConnections.By.GraphQLAPIId"
  unit         = "Count"
}
