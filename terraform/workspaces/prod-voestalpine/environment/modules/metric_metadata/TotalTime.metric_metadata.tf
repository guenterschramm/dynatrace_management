resource "dynatrace_metric_metadata" "TotalTime" {
  display_name = "TotalTime"
  metric_id    = "metric-cloud.aws.bedrock_agents.TotalTime.By.AgentAliasArn.ModelId.Operation"
  unit         = "Milliseconds"
}
