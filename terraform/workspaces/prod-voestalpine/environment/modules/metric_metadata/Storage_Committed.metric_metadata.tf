resource "dynatrace_metric_metadata" "Storage_Committed" {
  description        = "Total storage space, in bytes, committed to this virtual machine across all datastores."
  display_name       = "Storage Committed"
  metric_id          = "metric-vmware.vm.storage.committed"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Byte"
}
