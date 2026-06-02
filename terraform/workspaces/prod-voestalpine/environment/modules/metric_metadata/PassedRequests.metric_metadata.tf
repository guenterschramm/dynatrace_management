resource "dynatrace_metric_metadata" "PassedRequests" {
  display_name = "PassedRequests"
  metric_id    = "metric-cloud.aws.wafv2.PassedRequests.By.Region.Rule.WebACL"
  unit         = "Count"
}
