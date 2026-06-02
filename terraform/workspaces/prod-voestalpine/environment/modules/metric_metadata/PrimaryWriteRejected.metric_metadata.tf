resource "dynatrace_metric_metadata" "PrimaryWriteRejected" {
  display_name = "PrimaryWriteRejected"
  metric_id    = "metric-cloud.aws.opensearch_domain.PrimaryWriteRejected.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
