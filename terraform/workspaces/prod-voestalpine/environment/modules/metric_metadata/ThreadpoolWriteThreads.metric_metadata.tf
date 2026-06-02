resource "dynatrace_metric_metadata" "ThreadpoolWriteThreads" {
  display_name = "ThreadpoolWriteThreads"
  metric_id    = "metric-cloud.aws.opensearch_domain.ThreadpoolWriteThreads.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
