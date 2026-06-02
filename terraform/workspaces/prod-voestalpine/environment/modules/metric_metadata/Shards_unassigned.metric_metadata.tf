resource "dynatrace_metric_metadata" "Shards_unassigned" {
  display_name = "Shards.unassigned"
  metric_id    = "metric-cloud.aws.opensearch_domain.Shards.unassigned.By.ClientId.DomainName"
  unit         = "Count"
}
