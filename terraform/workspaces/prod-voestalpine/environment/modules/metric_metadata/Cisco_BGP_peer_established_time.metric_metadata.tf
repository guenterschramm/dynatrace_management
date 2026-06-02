resource "dynatrace_metric_metadata" "Cisco_BGP_peer_established_time" {
  description        = "This timer indicates how long (in seconds) this peer has been in the established state or how long since this peer was last in the established state."
  display_name       = "Cisco BGP peer established time"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cbgp.established_time"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Second"
}
