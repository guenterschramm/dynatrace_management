resource "dynatrace_metric_metadata" "CaptchaRequests" {
  display_name = "CaptchaRequests"
  metric_id    = "metric-cloud.aws.wafv2.CaptchaRequests.By.Region.Rule.WebACL"
  unit         = "Count"
}
