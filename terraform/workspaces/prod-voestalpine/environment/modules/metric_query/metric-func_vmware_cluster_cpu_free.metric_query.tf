resource "dynatrace_metric_query" "metric-func_vmware_cluster_cpu_free" {
  metric_id       = "metric-func:vmware.cluster.cpu.free"
  metric_selector =<<-EOT
    (vmware.cluster.cpu.capacity:splitBy("dt.entity.vmware:cluster") - vmware.cluster.cpu.used:splitBy("dt.entity.vmware:cluster"))
  EOT
}
