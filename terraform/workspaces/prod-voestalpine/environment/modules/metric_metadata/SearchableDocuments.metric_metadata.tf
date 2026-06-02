resource "dynatrace_metric_metadata" "SearchableDocuments" {
  display_name = "SearchableDocuments"
  metric_id    = "metric-cloud.aws.opensearch_domain.SearchableDocuments.By.ClientId.DomainName"
  unit         = "Count"
}
