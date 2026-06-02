resource "dynatrace_metric_metadata" "WarmCPUUtilization" {
  display_name = "WarmCPUUtilization"
  metric_id    = "metric-cloud.aws.opensearch_domain.WarmCPUUtilization.By.ClientId.DomainName"
  unit         = "Percent"
}
