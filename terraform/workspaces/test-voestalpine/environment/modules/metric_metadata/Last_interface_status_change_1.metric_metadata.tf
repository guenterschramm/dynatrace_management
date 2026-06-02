resource "dynatrace_metric_metadata" "Last_interface_status_change_1" {
  description        = "Value of 'sysUpTime' when the interface entered its current state"
  display_name       = "Last interface status change"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.if.lastchange"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device_interface"
  unit               = "Count"
}
