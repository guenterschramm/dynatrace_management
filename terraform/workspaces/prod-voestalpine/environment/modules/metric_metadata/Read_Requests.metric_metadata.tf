resource "dynatrace_metric_metadata" "Read_Requests" {
  description        = "Number of disk reads per second during the collection interval"
  display_name       = "Read Requests"
  metric_id          = "metric-vmware.vm.disk.numberReadAveraged.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "PerSecond"
}
