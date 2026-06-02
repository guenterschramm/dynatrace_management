resource "dynatrace_metric_metadata" "Cluster_Storage_Used" {
  display_name       = "Cluster Storage Used"
  metric_id          = "metric-vmware.cluster.storage.used"
  source_entity_type = "vmware:cluster"
  unit               = "MebiByte"
}
