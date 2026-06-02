resource "dynatrace_metric_metadata" "TextUnitCount" {
  display_name = "TextUnitCount"
  metric_id    = "metric-cloud.aws.bedrock_guardrails.TextUnitCount.By.FindingType.GuardrailArn.GuardrailVersion"
  unit         = "Count"
}
