resource "dynatrace_metric_metadata" "Number_of_CPU_Cores" {
  display_name       = "Number of CPU Cores"
  metric_id          = "metric-vmware.host.cpu.num_cores"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
