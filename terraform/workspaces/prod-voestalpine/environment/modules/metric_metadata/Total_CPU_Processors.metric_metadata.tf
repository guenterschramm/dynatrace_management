resource "dynatrace_metric_metadata" "Total_CPU_Processors" {
  display_name       = "Total CPU Processors"
  metric_id          = "metric-vmware.cluster.cpu.cores"
  source_entity_type = "vmware:cluster"
  unit               = "Count"
}
