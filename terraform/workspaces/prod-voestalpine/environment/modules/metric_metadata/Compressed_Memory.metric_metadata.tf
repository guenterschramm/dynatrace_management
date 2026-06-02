resource "dynatrace_metric_metadata" "Compressed_Memory" {
  description        = "The amount of compressed memory currently consumed by VM, in Kb."
  display_name       = "Compressed Memory"
  metric_id          = "metric-vmware.vm.mem.compressed"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloByte"
}
