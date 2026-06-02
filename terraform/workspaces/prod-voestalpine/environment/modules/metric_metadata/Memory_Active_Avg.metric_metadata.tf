resource "dynatrace_metric_metadata" "Memory_Active_Avg" {
  display_name       = "Memory Active (Avg)"
  metric_id          = "metric-vmware.host.mem.active.average"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
