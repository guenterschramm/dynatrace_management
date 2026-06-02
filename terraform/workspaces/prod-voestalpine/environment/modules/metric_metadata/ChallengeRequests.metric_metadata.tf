resource "dynatrace_metric_metadata" "ChallengeRequests" {
  display_name = "ChallengeRequests"
  metric_id    = "metric-cloud.aws.wafv2.ChallengeRequests.By.Region.Rule.WebACL"
  unit         = "Count"
}
