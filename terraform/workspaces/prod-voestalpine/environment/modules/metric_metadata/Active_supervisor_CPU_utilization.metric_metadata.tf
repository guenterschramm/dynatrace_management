resource "dynatrace_metric_metadata" "Active_supervisor_CPU_utilization" {
  description        = "The average utilization of CPU on the active supervisor."
  display_name       = "Active supervisor CPU utilization"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.ha.active_supervisor.cpu_utilization"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Percent"
}
