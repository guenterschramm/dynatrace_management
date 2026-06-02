resource "dynatrace_metric_metadata" "FindingCounts" {
  display_name = "FindingCounts"
  metric_id    = "metric-cloud.aws.bedrock_guardrails.FindingCounts.By.FindingType.GuardrailArn.GuardrailVersion"
  unit         = "Count"
}
