resource "dynatrace_metric_metadata" "DiskQueueDepth" {
  display_name = "DiskQueueDepth"
  metric_id    = "metric-cloud.aws.opensearch_domain.DiskQueueDepth.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
