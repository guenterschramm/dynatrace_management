resource "dynatrace_metric_metadata" "MasterJVMMemoryPressure" {
  display_name = "MasterJVMMemoryPressure"
  metric_id    = "metric-cloud.aws.opensearch_domain.MasterJVMMemoryPressure.By.ClientId.DomainName"
  unit         = "Percent"
}
