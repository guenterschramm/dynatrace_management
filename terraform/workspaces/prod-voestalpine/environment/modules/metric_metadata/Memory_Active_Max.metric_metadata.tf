resource "dynatrace_metric_metadata" "Memory_Active_Max" {
  display_name       = "Memory Active (Max)"
  metric_id          = "metric-vmware.host.mem.active.maximum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
