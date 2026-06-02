resource "dynatrace_metric_metadata" "BGP_peer_connection_state" {
  description        = "The BGP peer connection state. idle(1), connect(2), active(3), opensent(4), openconfirm(5), established(6). BGP4-MIB."
  display_name       = "BGP peer connection state"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.bgp4.peer.state"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "State"
}
