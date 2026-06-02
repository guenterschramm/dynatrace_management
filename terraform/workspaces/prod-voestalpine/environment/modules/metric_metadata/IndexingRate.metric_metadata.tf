resource "dynatrace_metric_metadata" "IndexingRate" {
  display_name = "IndexingRate"
  metric_id    = "metric-cloud.aws.opensearch_domain.IndexingRate.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
