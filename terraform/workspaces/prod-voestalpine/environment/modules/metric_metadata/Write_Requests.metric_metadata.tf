resource "dynatrace_metric_metadata" "Write_Requests" {
  description        = "Number of disk writes per second during the collection interval"
  display_name       = "Write Requests"
  metric_id          = "metric-vmware.vm.disk.numberWriteAveraged.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "PerSecond"
}
