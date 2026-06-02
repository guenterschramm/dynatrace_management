resource "dynatrace_metric_metadata" "ClusterUsedSpace" {
  display_name = "ClusterUsedSpace"
  metric_id    = "metric-cloud.aws.opensearch_domain.ClusterUsedSpace.By.ClientId.DomainName"
  unit         = "Megabytes"
}
