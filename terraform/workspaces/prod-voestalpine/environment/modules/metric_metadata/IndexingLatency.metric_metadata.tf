resource "dynatrace_metric_metadata" "IndexingLatency" {
  display_name = "IndexingLatency"
  metric_id    = "metric-cloud.aws.opensearch_domain.IndexingLatency.By.ClientId.DomainName.NodeId"
  unit         = "Milliseconds"
}
