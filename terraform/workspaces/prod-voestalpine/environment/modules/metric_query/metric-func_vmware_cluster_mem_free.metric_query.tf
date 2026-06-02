resource "dynatrace_metric_query" "metric-func_vmware_cluster_mem_free" {
  metric_id       = "metric-func:vmware.cluster.mem.free"
  metric_selector =<<-EOT
    (vmware.cluster.mem.capacity:splitBy("dt.entity.vmware:cluster") - vmware.cluster.mem.used:splitBy("dt.entity.vmware:cluster"))
  EOT
}
