resource "dynatrace_metric_metadata" "Time_since_the_last_re-start_1" {
  description        = "The time (in hundredths of a second) since the network management portion of the system was last re-initialized"
  display_name       = "Time since the last re-start"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.sys.uptime"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Unspecified"
}
