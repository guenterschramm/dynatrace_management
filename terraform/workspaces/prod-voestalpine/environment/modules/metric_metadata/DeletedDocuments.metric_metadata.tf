resource "dynatrace_metric_metadata" "DeletedDocuments" {
  display_name = "DeletedDocuments"
  metric_id    = "metric-cloud.aws.opensearch_domain.DeletedDocuments.By.ClientId.DomainName"
  unit         = "Count"
}
