resource "dynatrace_metric_metadata" "VM_Memory_Reservation" {
  display_name       = "VM Memory Reservation"
  metric_id          = "metric-vmware.vm.reservation.memory"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MegaByte"
}
