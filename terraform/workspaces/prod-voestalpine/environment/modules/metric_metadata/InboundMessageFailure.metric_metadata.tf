resource "dynatrace_metric_metadata" "InboundMessageFailure" {
  display_name = "InboundMessageFailure"
  metric_id    = "metric-cloud.aws.appsync.InboundMessageFailure.By.GraphQLAPIId"
  unit         = "Count"
}
