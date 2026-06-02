resource "dynatrace_metric_metadata" "CPU_Usage_in_MHz_max" {
  description        = "CPU usage in megahertz during the interval"
  display_name       = "CPU Usage in MHz (max)"
  metric_id          = "metric-vmware.host.cpu.usagemhz.maximum"
  source_entity_type = "vmware:host"
  unit               = "Unspecified"
}
