resource "dynatrace_metric_metadata" "Fan_state" {
  description        = "Current state of the fan instrumented"
  display_name       = "Fan state"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.envmon.fan.state"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Unspecified"
}
