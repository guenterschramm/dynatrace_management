resource "dynatrace_metric_metadata" "CPU_Usage_min" {
  description        = "CPU usage as a percentage during the interval"
  display_name       = "CPU Usage (min)"
  metric_id          = "metric-vmware.host.cpu.usage.minimum"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
