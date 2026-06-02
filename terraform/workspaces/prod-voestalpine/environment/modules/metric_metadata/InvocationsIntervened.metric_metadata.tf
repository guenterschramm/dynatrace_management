resource "dynatrace_metric_metadata" "InvocationsIntervened" {
  display_name = "InvocationsIntervened"
  metric_id    = "metric-cloud.aws.bedrock_guardrails.InvocationsIntervened.By.FindingType.GuardrailArn.GuardrailVersion"
  unit         = "Count"
}
