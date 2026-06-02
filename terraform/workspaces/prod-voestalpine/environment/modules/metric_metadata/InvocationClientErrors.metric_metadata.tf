resource "dynatrace_metric_metadata" "InvocationClientErrors" {
  display_name = "InvocationClientErrors"
  metric_id    = "metric-cloud.aws.bedrock_agents.InvocationClientErrors.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
