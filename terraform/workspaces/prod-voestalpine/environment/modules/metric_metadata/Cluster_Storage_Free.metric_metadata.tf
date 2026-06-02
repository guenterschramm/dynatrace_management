resource "dynatrace_metric_metadata" "Cluster_Storage_Free" {
  display_name = "Cluster Storage Free"
  metric_id    = "metric-func:vmware.cluster.storage.free"
  unit         = "MebiByte"
}
