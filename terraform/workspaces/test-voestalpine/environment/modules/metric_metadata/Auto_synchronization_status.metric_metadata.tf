resource "dynatrace_metric_metadata" "Auto_synchronization_status" {
  description        = "The status of the current auto synchronization process, or if no such process is in progress, then the state of the most recent one."
  display_name       = "Auto synchronization status"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.ha.synchronization.state"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "State"
}
