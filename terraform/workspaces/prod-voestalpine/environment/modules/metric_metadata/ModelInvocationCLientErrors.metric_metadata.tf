resource "dynatrace_metric_metadata" "ModelInvocationCLientErrors" {
  display_name = "ModelInvocationCLientErrors"
  metric_id    = "metric-cloud.aws.bedrock_agents.ModelInvocationCLientErrors.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
