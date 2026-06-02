resource "dynatrace_metric_metadata" "Fault_Tolerance_Status" {
  description        = "The fault tolerance state of the VM. 0 = Enabled, 1 = Starting, 2 = notConfigured, 3 = Running, 4 = Disabled, 5 = needSecondary"
  display_name       = "Fault Tolerance Status"
  metric_id          = "metric-vmware.vm.fault.tolerance.status"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Count"
}
