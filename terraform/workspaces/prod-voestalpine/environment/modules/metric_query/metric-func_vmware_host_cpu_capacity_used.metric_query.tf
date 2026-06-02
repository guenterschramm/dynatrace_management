resource "dynatrace_metric_query" "metric-func_vmware_host_cpu_capacity_used" {
  metric_id       = "metric-func:vmware.host.cpu.capacity_used"
  metric_selector = "(vmware.host.cpu.used_hz/vmware.host.cpu.total_hz)*100"
}
