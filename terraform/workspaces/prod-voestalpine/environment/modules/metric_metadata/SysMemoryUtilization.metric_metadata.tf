resource "dynatrace_metric_metadata" "SysMemoryUtilization" {
  display_name = "SysMemoryUtilization"
  metric_id    = "metric-cloud.aws.opensearch_domain.SysMemoryUtilization.By.ClientId.DomainName.NodeId"
  unit         = "Percent"
}
