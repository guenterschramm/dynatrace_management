resource "dynatrace_metric_metadata" "Host_Disk_Capacity" {
  display_name        = "Host Disk Capacity"
  metric_id           = "metric-vmware.host.disk.capacity"
  source_entity_type  = "vmware:host"
  unit                = "Byte"
  unit_display_format = "binary"
}
