resource "dynatrace_metric_metadata" "Shards_active" {
  display_name = "Shards.active"
  metric_id    = "metric-cloud.aws.opensearch_domain.Shards.active.By.ClientId.DomainName"
  unit         = "Count"
}
