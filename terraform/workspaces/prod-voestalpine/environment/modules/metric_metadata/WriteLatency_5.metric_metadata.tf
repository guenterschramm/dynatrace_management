resource "dynatrace_metric_metadata" "WriteLatency_5" {
  display_name = "WriteLatency"
  metric_id    = "metric-cloud.aws.opensearch_domain.WriteLatency.By.ClientId.DomainName.NodeId"
  unit         = "Seconds"
}
