resource "dynatrace_metric_metadata" "FreeStorageSpace_1" {
  display_name = "FreeStorageSpace"
  metric_id    = "metric-cloud.aws.opensearch_domain.FreeStorageSpace.By.ClientId.DomainName.NodeId"
  unit         = "Megabytes"
}
