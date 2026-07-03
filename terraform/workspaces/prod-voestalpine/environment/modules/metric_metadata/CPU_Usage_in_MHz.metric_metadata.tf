resource "dynatrace_metric_metadata" "CPU_Usage_in_MHz" {
  description        = "CPU usage in megahertz during the interval"
  display_name       = "CPU Usage in MHz"
  metric_id          = "metric-vmware.vm.cpu.usagemhz.maximum"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MegaHertz"
}
