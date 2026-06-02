resource "dynatrace_metric_metadata" "Cluster_CPU_Free" {
  display_name = "Cluster CPU Free"
  metric_id    = "metric-func:vmware.cluster.cpu.free"
  unit         = "MegaHertz"
}
