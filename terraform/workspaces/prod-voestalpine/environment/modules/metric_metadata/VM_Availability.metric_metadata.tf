resource "dynatrace_metric_metadata" "VM_Availability" {
  description        = "100% if Connected and Powered On, else 0%"
  display_name       = "VM Availability"
  metric_id          = "metric-vmware.vm.availability"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
