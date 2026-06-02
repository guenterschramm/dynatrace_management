resource "dynatrace_metric_metadata" "ThreadpoolSearchQueue" {
  display_name = "ThreadpoolSearchQueue"
  metric_id    = "metric-cloud.aws.opensearch_domain.ThreadpoolSearchQueue.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
