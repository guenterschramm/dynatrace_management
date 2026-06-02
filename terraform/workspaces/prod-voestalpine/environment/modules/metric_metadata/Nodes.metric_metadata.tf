resource "dynatrace_metric_metadata" "Nodes" {
  display_name = "Nodes"
  metric_id    = "metric-cloud.aws.opensearch_domain.Nodes.By.ClientId.DomainName"
  unit         = "Count"
}
