resource "dynatrace_metric_metadata" "SearchRate" {
  display_name = "SearchRate"
  metric_id    = "metric-cloud.aws.opensearch_domain.SearchRate.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
