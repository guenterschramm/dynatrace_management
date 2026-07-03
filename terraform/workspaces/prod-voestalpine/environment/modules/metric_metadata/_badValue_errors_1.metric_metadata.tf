resource "dynatrace_metric_metadata" "_badValue_errors_1" {
  description        = "Number of PDUs delivered with 'badValue' error"
  display_name       = "'badValue' errors"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.in.bad.values.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
