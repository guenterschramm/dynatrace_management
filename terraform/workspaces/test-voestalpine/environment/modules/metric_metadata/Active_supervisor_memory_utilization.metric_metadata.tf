resource "dynatrace_metric_metadata" "Active_supervisor_memory_utilization" {
  description        = "The average utilization of memory on the active supervisor."
  display_name       = "Active supervisor memory utilization"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.ha.active_supervisor.memory_utilization"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Percent"
}
