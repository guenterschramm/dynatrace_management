resource "dynatrace_metric_metadata" "ModelLatency_1" {
  display_name = "ModelLatency"
  metric_id    = "metric-cloud.aws.bedrock_agents.ModelLatency.By.AgentAliasArn.ModelId.Operation"
  unit         = "Milliseconds"
}
