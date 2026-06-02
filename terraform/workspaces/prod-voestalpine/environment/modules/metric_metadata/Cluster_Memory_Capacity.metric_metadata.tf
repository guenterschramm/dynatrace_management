resource "dynatrace_metric_metadata" "Cluster_Memory_Capacity" {
  display_name       = "Cluster Memory Capacity"
  metric_id          = "metric-vmware.cluster.mem.capacity"
  source_entity_type = "vmware:cluster"
  unit               = "MebiByte"
}
