resource "dynatrace_metric_metadata" "JVMGCOldCollectionTime" {
  display_name = "JVMGCOldCollectionTime"
  metric_id    = "metric-cloud.aws.opensearch_domain.JVMGCOldCollectionTime.By.ClientId.DomainName.NodeId"
  unit         = "Milliseconds"
}
