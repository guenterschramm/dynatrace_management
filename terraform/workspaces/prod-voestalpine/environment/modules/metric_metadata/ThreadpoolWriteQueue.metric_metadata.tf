resource "dynatrace_metric_metadata" "ThreadpoolWriteQueue" {
  display_name = "ThreadpoolWriteQueue"
  metric_id    = "metric-cloud.aws.opensearch_domain.ThreadpoolWriteQueue.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
