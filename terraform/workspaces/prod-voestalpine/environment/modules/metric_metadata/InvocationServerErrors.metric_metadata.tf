resource "dynatrace_metric_metadata" "InvocationServerErrors" {
  display_name = "InvocationServerErrors"
  metric_id    = "metric-cloud.aws.bedrock_agents.InvocationServerErrors.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
