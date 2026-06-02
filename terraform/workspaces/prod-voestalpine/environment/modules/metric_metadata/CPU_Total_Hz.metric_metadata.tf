resource "dynatrace_metric_metadata" "CPU_Total_Hz" {
  description        = "Total CPU Hz available to Host (num of CPU Cores * Hz for Each Core)"
  display_name       = "CPU Total Hz"
  metric_id          = "metric-vmware.host.cpu.total_hz"
  source_entity_type = "vmware:host"
  unit               = "Hertz"
}
