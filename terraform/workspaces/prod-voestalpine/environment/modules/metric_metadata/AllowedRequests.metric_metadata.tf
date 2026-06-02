resource "dynatrace_metric_metadata" "AllowedRequests" {
  display_name = "AllowedRequests"
  metric_id    = "metric-cloud.aws.wafv2.AllowedRequests.By.Region.Rule.WebACL"
  unit         = "Count"
}
