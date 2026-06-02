resource "dynatrace_metric_metadata" "RequestsWithValidCaptchaToken" {
  display_name = "RequestsWithValidCaptchaToken"
  metric_id    = "metric-cloud.aws.wafv2.RequestsWithValidCaptchaToken.By.Region.Rule.WebACL"
  unit         = "Count"
}
