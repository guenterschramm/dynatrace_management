resource "dynatrace_metric_metadata" "InvocationCount" {
  display_name = "InvocationCount"
  metric_id    = "metric-cloud.aws.bedrock_agents.InvocationCount.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
