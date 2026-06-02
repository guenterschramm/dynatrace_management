resource "dynatrace_metric_metadata" "Memory_Max_Usage" {
  description        = "Current upper-bound on memory usage."
  display_name       = "Memory Max Usage"
  metric_id          = "metric-vmware.vm.mem.max_usage"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MegaByte"
}
