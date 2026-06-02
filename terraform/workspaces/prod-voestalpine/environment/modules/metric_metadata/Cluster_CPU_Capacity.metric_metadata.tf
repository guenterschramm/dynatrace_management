resource "dynatrace_metric_metadata" "Cluster_CPU_Capacity" {
  display_name       = "Cluster CPU Capacity"
  metric_id          = "metric-vmware.cluster.cpu.capacity"
  source_entity_type = "vmware:cluster"
  unit               = "MegaHertz"
}
