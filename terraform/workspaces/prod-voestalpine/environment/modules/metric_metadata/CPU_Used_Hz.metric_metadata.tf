resource "dynatrace_metric_metadata" "CPU_Used_Hz" {
  description        = "Used CPU Hz of Host"
  display_name       = "CPU Used Hz"
  metric_id          = "metric-vmware.host.cpu.used_hz"
  source_entity_type = "vmware:host"
  unit               = "Hertz"
}
