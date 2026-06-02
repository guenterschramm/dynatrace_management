resource "dynatrace_metric_metadata" "Memory_Consumed_Max_1" {
  display_name       = "Memory Consumed (Max)"
  metric_id          = "metric-vmware.host.mem.consumed.maximum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
