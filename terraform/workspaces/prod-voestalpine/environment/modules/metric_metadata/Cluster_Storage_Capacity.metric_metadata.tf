resource "dynatrace_metric_metadata" "Cluster_Storage_Capacity" {
  display_name       = "Cluster Storage Capacity"
  metric_id          = "metric-vmware.cluster.storage.capacity"
  source_entity_type = "vmware:cluster"
  unit               = "MebiByte"
}
