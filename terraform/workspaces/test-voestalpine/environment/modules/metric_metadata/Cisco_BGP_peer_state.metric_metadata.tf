resource "dynatrace_metric_metadata" "Cisco_BGP_peer_state" {
  description        = "The BGP peer connection state."
  display_name       = "Cisco BGP peer state"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cbgp.peer.state"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "State"
}
