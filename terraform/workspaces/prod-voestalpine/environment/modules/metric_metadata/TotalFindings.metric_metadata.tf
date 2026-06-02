resource "dynatrace_metric_metadata" "TotalFindings" {
  display_name = "TotalFindings"
  metric_id    = "metric-cloud.aws.bedrock_guardrails.TotalFindings.By.FindingType.GuardrailArn.GuardrailVersion"
  unit         = "Count"
}
