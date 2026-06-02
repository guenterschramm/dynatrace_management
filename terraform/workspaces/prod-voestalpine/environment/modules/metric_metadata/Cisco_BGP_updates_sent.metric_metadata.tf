resource "dynatrace_metric_metadata" "Cisco_BGP_updates_sent" {
  description        = "The number of BGP UPDATE messages sent on the connection with the peer."
  display_name       = "Cisco BGP updates sent"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cbgp.updates_sent_count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
