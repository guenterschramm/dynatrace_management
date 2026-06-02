resource "dynatrace_metric_metadata" "ModelInvocationThrottles" {
  display_name = "ModelInvocationThrottles"
  metric_id    = "metric-cloud.aws.bedrock_agents.ModelInvocationThrottles.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
