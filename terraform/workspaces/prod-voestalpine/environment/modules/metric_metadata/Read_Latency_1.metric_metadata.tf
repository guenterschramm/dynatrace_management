resource "dynatrace_metric_metadata" "Read_latency_1" {
  description        = "The average time a read from the virtual disk takes"
  display_name       = "Read latency"
  metric_id          = "metric-vmware.vm.disk.totalReadLatency.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
}
