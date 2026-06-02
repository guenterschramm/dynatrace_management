resource "dynatrace_metric_metadata" "JVMGCYoungCollectionTime" {
  display_name = "JVMGCYoungCollectionTime"
  metric_id    = "metric-cloud.aws.opensearch_domain.JVMGCYoungCollectionTime.By.ClientId.DomainName.NodeId"
  unit         = "Milliseconds"
}
