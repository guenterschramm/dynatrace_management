resource "dynatrace_metric_metadata" "Memory_Used_MB" {
  description        = "Physical memory usage on the host in MB"
  display_name       = "Memory Used (MB)"
  metric_id          = "metric-vmware.host.mem.used_mb"
  source_entity_type = "vmware:host"
  unit               = "MegaByte"
}
