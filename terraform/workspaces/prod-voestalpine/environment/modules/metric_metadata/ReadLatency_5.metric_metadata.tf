resource "dynatrace_metric_metadata" "ReadLatency_5" {
  display_name = "ReadLatency"
  metric_id    = "metric-cloud.aws.opensearch_domain.ReadLatency.By.ClientId.DomainName.NodeId"
  unit         = "Seconds"
}
