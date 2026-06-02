resource "dynatrace_metric_query" "metric-func_vmware_cluster_storage_free" {
  metric_id       = "metric-func:vmware.cluster.storage.free"
  metric_selector =<<-EOT
    (vmware.cluster.storage.capacity:splitBy("dt.entity.vmware:cluster") - vmware.cluster.storage.used:splitBy("dt.entity.vmware:cluster"))
  EOT
}
