resource "dynatrace_metric_metadata" "CPU_Usage_max" {
  description        = "CPU usage as a percentage during the interval"
  display_name       = "CPU Usage (max)"
  metric_id          = "metric-vmware.host.cpu.usage.maximum"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
