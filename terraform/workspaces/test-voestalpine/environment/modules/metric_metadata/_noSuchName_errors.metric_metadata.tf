resource "dynatrace_metric_metadata" "_noSuchName_errors" {
  description        = "Number of PDUs delivered PDUs with 'noSuchName' error"
  display_name       = "'noSuchName' errors"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.in.nosuchnames.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
