resource "dynatrace_metric_query" "metric-func_vmware_datastore_used" {
  metric_id       = "metric-func:vmware.datastore.used"
  metric_selector = "100 - (100 * (vmware.datastore.freeSpace/vmware.datastore.capacity))"
}
