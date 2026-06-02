resource "dynatrace_metric_metadata" "CPU_Core_Count_Contention_Ready" {
  description        = "Time the VM vCPU is ready to run, but is unable to run due to co-scheduling constraints"
  display_name       = "CPU Core Count Contention (Ready)"
  metric_id          = "metric-vmware.vm.cpu.corecount.contention.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
