resource "dynatrace_metric_metadata" "CPU_Usage_in_MHz_min" {
  description        = "CPU usage in megahertz during the interval"
  display_name       = "CPU Usage in MHz (min)"
  metric_id          = "metric-vmware.host.cpu.usagemhz.minimum"
  source_entity_type = "vmware:host"
  unit               = "Unspecified"
}
