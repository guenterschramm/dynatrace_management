resource "dynatrace_metric_metadata" "CPU_Capacity_Contention_2" {
  description        = "Percent of time the VM is unable to run because it is contending for access to the physical CPU(s)"
  display_name       = "CPU Capacity Contention"
  metric_id          = "metric-vmware.host.cpu.capacity.contention.average"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
