resource "dynatrace_metric_metadata" "OutputTokenCount" {
  display_name = "OutputTokenCount"
  metric_id    = "metric-cloud.aws.bedrock_agents.OutputTokenCount.By.AgentAliasArn.ModelId.Operation"
  unit         = "Count"
}
