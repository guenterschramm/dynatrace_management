resource "dynatrace_metric_metadata" "_noSuchName_errors" {
  description        = "Number of PDUs delivered with 'noSuchName' error"
  display_name       = "'noSuchName' errors"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.snmp.in.nosuchnames.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
