resource "dynatrace_metric_metadata" "Cluster_Memory_Free" {
  display_name = "Cluster Memory Free"
  metric_id    = "metric-func:vmware.cluster.mem.free"
  unit         = "MebiByte"
}
