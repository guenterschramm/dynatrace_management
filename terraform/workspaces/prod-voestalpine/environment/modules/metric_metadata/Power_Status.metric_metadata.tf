resource "dynatrace_metric_metadata" "Power_Status" {
  description        = "Current power state of the virtual machine. Status Codes: 0=Powered On 1=Suspended 2=Powered Off"
  display_name       = "Power Status"
  metric_id          = "metric-vmware.vm.power.status"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Count"
}
