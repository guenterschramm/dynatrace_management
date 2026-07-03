resource "dynatrace_metric_metadata" "ESXi_Host_Uptime" {
  description        = "Number of seconds the ESXi host has been up"
  display_name       = "ESXi Host Uptime"
  metric_id          = "metric-vmware.host.uptime"
  source_entity_type = "vmware:host"
  unit               = "Second"
}
