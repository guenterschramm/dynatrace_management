resource "dynatrace_metric_metadata" "Cluster_Memory_Used" {
  display_name       = "Cluster Memory Used"
  metric_id          = "metric-vmware.cluster.mem.used"
  source_entity_type = "vmware:cluster"
  unit               = "MebiByte"
}
