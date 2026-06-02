resource "dynatrace_metric_metadata" "CPU_Usage_in_MHz_avg" {
  description        = "CPU usage in megahertz during the interval"
  display_name       = "CPU Usage in MHz (avg)"
  metric_id          = "metric-vmware.host.cpu.usagemhz.average"
  source_entity_type = "vmware:host"
  unit               = "Unspecified"
}
