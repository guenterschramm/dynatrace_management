resource "dynatrace_metric_metadata" "HotStorageSpaceUtilization" {
  display_name = "HotStorageSpaceUtilization"
  metric_id    = "metric-cloud.aws.opensearch_domain.HotStorageSpaceUtilization.By.ClientId.DomainName"
  unit         = "Megabytes"
}
