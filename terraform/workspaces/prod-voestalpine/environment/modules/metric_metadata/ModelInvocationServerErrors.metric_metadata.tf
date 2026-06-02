resource "dynatrace_metric_metadata" "ModelInvocationServerErrors" {
  display_name = "ModelInvocationServerErrors"
  metric_id    = "metric-cloud.aws.bedrock_agents.ModelInvocationServerErrors.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
