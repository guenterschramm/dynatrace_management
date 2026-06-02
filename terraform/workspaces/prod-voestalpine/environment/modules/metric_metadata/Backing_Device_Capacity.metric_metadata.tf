resource "dynatrace_metric_metadata" "Backing_Device_Capacity" {
  display_name       = "Backing Device Capacity"
  metric_id          = "metric-vmware.vm.device.capacity"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KibiByte"
}
