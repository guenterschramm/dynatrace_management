resource "dynatrace_metric_metadata" "LowReputationRequestsDenied" {
  display_name = "LowReputationRequestsDenied"
  metric_id    = "metric-cloud.aws.wafv2.LowReputationRequestsDenied.By.Region.Rule.WebACL"
  unit         = "Count"
}
