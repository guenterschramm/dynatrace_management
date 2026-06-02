resource "dynatrace_metric_metadata" "OpenSearchRequests" {
  display_name = "OpenSearchRequests"
  metric_id    = "metric-cloud.aws.opensearch_domain.OpenSearchRequests.By.ClientId.DomainName"
  unit         = "Count"
}
