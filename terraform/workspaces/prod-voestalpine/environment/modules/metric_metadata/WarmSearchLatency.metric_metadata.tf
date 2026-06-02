resource "dynatrace_metric_metadata" "WarmSearchLatency" {
  display_name = "WarmSearchLatency"
  metric_id    = "metric-cloud.aws.opensearch_domain.WarmSearchLatency.By.ClientId.DomainName"
  unit         = "Milliseconds"
}
