resource "dynatrace_metric_metadata" "Shards_activePrimary" {
  display_name = "Shards.activePrimary"
  metric_id    = "metric-cloud.aws.opensearch_domain.Shards.activePrimary.By.ClientId.DomainName"
  unit         = "Count"
}
