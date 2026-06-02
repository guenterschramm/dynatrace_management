resource "dynatrace_metric_metadata" "ThreadpoolSearchRejected" {
  display_name = "ThreadpoolSearchRejected"
  metric_id    = "metric-cloud.aws.opensearch_domain.ThreadpoolSearchRejected.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
