resource "dynatrace_metric_metadata" "Host_CPU_Capacity_Used" {
  display_name = "Host CPU Capacity Used"
  metric_id    = "metric-func:vmware.host.cpu.capacity_used"
  unit         = "Percent"
}
