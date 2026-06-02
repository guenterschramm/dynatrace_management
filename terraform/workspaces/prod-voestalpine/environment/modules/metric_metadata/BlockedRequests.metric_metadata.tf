resource "dynatrace_metric_metadata" "BlockedRequests" {
  display_name = "BlockedRequests"
  metric_id    = "metric-cloud.aws.wafv2.BlockedRequests.By.Region.Rule.WebACL"
  unit         = "Count"
}
