resource "dynatrace_metric_metadata" "ConnectSuccess" {
  display_name = "ConnectSuccess"
  metric_id    = "metric-cloud.aws.appsync.ConnectSuccess.By.GraphQLAPIId"
  unit         = "Count"
}
