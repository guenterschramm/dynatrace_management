resource "dynatrace_metric_metadata" "ModelInvocationCount" {
  display_name = "ModelInvocationCount"
  metric_id    = "metric-cloud.aws.bedrock_agents.ModelInvocationCount.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
