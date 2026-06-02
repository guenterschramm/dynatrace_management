resource "dynatrace_metric_metadata" "TTFT" {
  display_name = "TTFT"
  metric_id    = "metric-cloud.aws.bedrock_agents.TTFT.By.AgentAliasArn.ModelId.Operation"
  unit         = "Milliseconds"
}
