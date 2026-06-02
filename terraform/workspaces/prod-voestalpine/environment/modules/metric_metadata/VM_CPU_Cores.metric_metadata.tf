resource "dynatrace_metric_metadata" "VM_CPU_Cores" {
  display_name       = "VM CPU Cores"
  metric_id          = "metric-vmware.vm.cpu.num_cores"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Count"
}
