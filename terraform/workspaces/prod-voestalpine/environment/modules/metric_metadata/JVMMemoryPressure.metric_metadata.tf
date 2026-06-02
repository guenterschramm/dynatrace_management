resource "dynatrace_metric_metadata" "JVMMemoryPressure" {
  display_name = "JVMMemoryPressure"
  metric_id    = "metric-cloud.aws.opensearch_domain.JVMMemoryPressure.By.ClientId.DomainName.NodeId"
  unit         = "Percent"
}
