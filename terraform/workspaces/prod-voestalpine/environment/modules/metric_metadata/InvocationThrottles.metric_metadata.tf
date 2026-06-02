resource "dynatrace_metric_metadata" "InvocationThrottles" {
  display_name = "InvocationThrottles"
  metric_id    = "metric-cloud.aws.bedrock_agents.InvocationThrottles.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
