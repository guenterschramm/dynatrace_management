resource "dynatrace_metric_metadata" "ThreadpoolWriteRejected" {
  display_name = "ThreadpoolWriteRejected"
  metric_id    = "metric-cloud.aws.opensearch_domain.ThreadpoolWriteRejected.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
