resource "dynatrace_metric_metadata" "Cluster_CPU_Used" {
  display_name       = "Cluster CPU Used"
  metric_id          = "metric-vmware.cluster.cpu.used"
  source_entity_type = "vmware:cluster"
  unit               = "MegaHertz"
}
