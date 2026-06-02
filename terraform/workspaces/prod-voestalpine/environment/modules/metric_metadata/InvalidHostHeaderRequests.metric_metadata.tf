resource "dynatrace_metric_metadata" "InvalidHostHeaderRequests" {
  display_name = "InvalidHostHeaderRequests"
  metric_id    = "metric-cloud.aws.opensearch_domain.InvalidHostHeaderRequests.By.ClientId.DomainName"
  unit         = "Count"
}
