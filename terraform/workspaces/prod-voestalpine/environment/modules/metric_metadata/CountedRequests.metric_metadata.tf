resource "dynatrace_metric_metadata" "CountedRequests" {
  display_name = "CountedRequests"
  metric_id    = "metric-cloud.aws.wafv2.CountedRequests.By.Region.Rule.WebACL"
  unit         = "Count"
}
