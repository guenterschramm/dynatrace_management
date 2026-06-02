resource "dynatrace_metric_metadata" "VM_CPU_Reservation" {
  display_name       = "VM CPU Reservation"
  metric_id          = "metric-vmware.vm.reservation.cpu"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Unspecified"
}
