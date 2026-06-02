resource "dynatrace_metric_metadata" "Memory_Capacity_Contention" {
  description        = "Percentage of time VMs are waiting to access swapped, compressed or ballooned memory"
  display_name       = "Memory Capacity Contention"
  metric_id          = "metric-vmware.cluster.mem.capacity.contention.average"
  source_entity_type = "vmware:cluster"
  unit               = "Percent"
}
