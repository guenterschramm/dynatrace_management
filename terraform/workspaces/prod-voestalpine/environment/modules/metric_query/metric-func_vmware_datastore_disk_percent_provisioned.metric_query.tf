resource "dynatrace_metric_query" "metric-func_vmware_datastore_disk_percent_provisioned" {
  metric_id       = "metric-func:vmware.datastore.disk.percent_provisioned"
  metric_selector = "((vmware.datastore.disk.provisioned.latest*1024)/vmware.datastore.capacity)*100"
}
