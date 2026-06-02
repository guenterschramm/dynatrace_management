resource "dynatrace_metric_metadata" "Device_entity_attributes" {
  description        = "Constant value of 1 used for reporting entity attributes at a lower frequency"
  display_name       = "Device entity attributes"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.entity_attributes"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Unspecified"
}
