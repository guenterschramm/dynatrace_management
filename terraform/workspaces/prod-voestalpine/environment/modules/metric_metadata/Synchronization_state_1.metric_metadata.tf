resource "dynatrace_metric_metadata" "Synchronization_state_1" {
  description        = "The state of the auto synchronization of images between the active and standby supervisor."
  display_name       = "Synchronization state"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.ha.synchronization.enabled"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "State"
}
