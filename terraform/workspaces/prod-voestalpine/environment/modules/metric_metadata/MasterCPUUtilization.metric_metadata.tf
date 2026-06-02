resource "dynatrace_metric_metadata" "MasterCPUUtilization" {
  display_name = "MasterCPUUtilization"
  metric_id    = "metric-cloud.aws.opensearch_domain.MasterCPUUtilization.By.ClientId.DomainName"
  unit         = "Percent"
}
