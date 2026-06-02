resource "dynatrace_metric_metadata" "CPU_Usage" {
  description        = "CPU usage as a percentage during the interval"
  display_name       = "CPU Usage"
  metric_id          = "metric-vmware.host.cpu.usage.average"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
