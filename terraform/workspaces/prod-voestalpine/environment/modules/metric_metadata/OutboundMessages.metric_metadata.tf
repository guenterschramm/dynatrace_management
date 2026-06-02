resource "dynatrace_metric_metadata" "OutboundMessages" {
  display_name = "OutboundMessages"
  metric_id    = "metric-cloud.aws.appsync.OutboundMessages.By.GraphQLAPIId"
  unit         = "Count"
}
