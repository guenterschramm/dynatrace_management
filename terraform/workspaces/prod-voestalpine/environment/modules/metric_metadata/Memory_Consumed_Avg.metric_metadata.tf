resource "dynatrace_metric_metadata" "Memory_Consumed_Avg" {
  display_name       = "Memory Consumed (Avg)"
  metric_id          = "metric-vmware.host.mem.consumed.average"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
