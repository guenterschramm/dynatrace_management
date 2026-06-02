resource "dynatrace_metric_metadata" "InboundMessageError" {
  display_name = "InboundMessageError"
  metric_id    = "metric-cloud.aws.appsync.InboundMessageError.By.GraphQLAPIId"
  unit         = "Count"
}
