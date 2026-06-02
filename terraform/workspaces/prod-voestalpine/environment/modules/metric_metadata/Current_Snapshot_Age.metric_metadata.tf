resource "dynatrace_metric_metadata" "Current_Snapshot_Age" {
  description        = "Age of the current snapshot. VMware does not recommend using a given snapshot for more than 24 to 72 hours."
  display_name       = "Current Snapshot Age"
  metric_id          = "metric-vmware.vm.current_snapshot.age"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Second"
}
