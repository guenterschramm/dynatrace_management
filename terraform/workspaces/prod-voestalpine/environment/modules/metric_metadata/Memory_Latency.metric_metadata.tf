resource "dynatrace_metric_metadata" "Memory_Latency" {
  description        = "Percentage of time the virtual machine spent waiting to swap in or decompress guest physical memory"
  display_name       = "Memory Latency"
  metric_id          = "metric-vmware.vm.mem.latency.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
