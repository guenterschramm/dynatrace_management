resource "dynatrace_metric_metadata" "WarmJVMMemoryPressure" {
  display_name = "WarmJVMMemoryPressure"
  metric_id    = "metric-cloud.aws.opensearch_domain.WarmJVMMemoryPressure.By.ClientId.DomainName"
  unit         = "Percent"
}
