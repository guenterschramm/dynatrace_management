resource "dynatrace_metric_metadata" "Memory_Active_Min" {
  display_name       = "Memory Active (Min)"
  metric_id          = "metric-vmware.host.mem.active.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
