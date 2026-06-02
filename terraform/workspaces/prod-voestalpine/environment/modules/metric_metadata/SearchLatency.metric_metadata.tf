resource "dynatrace_metric_metadata" "SearchLatency" {
  display_name = "SearchLatency"
  metric_id    = "metric-cloud.aws.opensearch_domain.SearchLatency.By.ClientId.DomainName.NodeId"
  unit         = "Milliseconds"
}
