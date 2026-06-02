resource "dynatrace_metric_metadata" "InvocationLatency" {
  display_name = "InvocationLatency"
  metric_id    = "metric-cloud.aws.bedrock_guardrails.InvocationLatency.By.FindingType.GuardrailArn.GuardrailVersion"
  unit         = "Milliseconds"
}
