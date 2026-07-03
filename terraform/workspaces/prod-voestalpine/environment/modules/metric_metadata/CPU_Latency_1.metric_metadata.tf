resource "dynatrace_metric_metadata" "CPU_Latency_1" {
  description        = "Percent of time the virtual machine is unable to run because it is contending for access to the physical CPU(s)"
  display_name       = "CPU Latency"
  metric_id          = "metric-vmware.host.cpu.latency.average"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
