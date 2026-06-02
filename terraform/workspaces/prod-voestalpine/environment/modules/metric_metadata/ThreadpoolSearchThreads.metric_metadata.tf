resource "dynatrace_metric_metadata" "ThreadpoolSearchThreads" {
  display_name = "ThreadpoolSearchThreads"
  metric_id    = "metric-cloud.aws.opensearch_domain.ThreadpoolSearchThreads.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
