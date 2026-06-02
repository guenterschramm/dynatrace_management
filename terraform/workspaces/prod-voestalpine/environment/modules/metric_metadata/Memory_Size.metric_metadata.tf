resource "dynatrace_metric_metadata" "Memory_Size" {
  description        = "Total amount of physical memory on the host in bytes."
  display_name       = "Memory Size"
  metric_id          = "metric-vmware.host.mem.size"
  source_entity_type = "vmware:host"
  unit               = "Byte"
}
