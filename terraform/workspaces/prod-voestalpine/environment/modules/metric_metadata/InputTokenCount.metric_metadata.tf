resource "dynatrace_metric_metadata" "InputTokenCount" {
  display_name = "InputTokenCount"
  metric_id    = "metric-cloud.aws.bedrock_agents.InputTokenCount.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
