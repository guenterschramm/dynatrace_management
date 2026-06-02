resource "dynatrace_metric_metadata" "Storage_Uncommitted" {
  description        = "Additional storage space, in bytes, potentially used by this virtual machine on all datastores."
  display_name       = "Storage Uncommitted"
  metric_id          = "metric-vmware.vm.storage.uncommitted"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Byte"
}
