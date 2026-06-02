resource "dynatrace_metric_metadata" "Fan_temperature" {
  description        = "Current temperature of the fan instrumented"
  display_name       = "Fan temperature"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.envmon.temperature.status.value"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Unspecified"
}
