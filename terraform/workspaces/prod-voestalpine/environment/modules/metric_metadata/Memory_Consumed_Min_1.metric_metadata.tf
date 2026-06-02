resource "dynatrace_metric_metadata" "Memory_Consumed_Min_1" {
  display_name       = "Memory Consumed (Min)"
  metric_id          = "metric-vmware.host.mem.consumed.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
