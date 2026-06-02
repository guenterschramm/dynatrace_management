resource "dynatrace_metric_metadata" "OldGenJVMMemoryPressure" {
  display_name = "OldGenJVMMemoryPressure"
  metric_id    = "metric-cloud.aws.opensearch_domain.OldGenJVMMemoryPressure.By.ClientId.DomainName.NodeId"
  unit         = "Percent"
}
