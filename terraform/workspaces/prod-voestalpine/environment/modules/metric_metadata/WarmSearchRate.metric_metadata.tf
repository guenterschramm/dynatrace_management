resource "dynatrace_metric_metadata" "WarmSearchRate" {
  display_name = "WarmSearchRate"
  metric_id    = "metric-cloud.aws.opensearch_domain.WarmSearchRate.By.ClientId.DomainName"
  unit         = "Count"
}
