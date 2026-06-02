resource "dynatrace_metric_metadata" "Cisco_BGP_updates_received" {
  description        = "The number of BGP UPDATE messages received on the connection with the peer."
  display_name       = "Cisco BGP updates received"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cbgp.updates_received_count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
