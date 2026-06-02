resource "dynatrace_metric_metadata" "Cisco_BGP_peer_admin_status" {
  description        = "The desired state of the BGP connection. stop(1), start(2). CISCO-BGP4-MIB."
  display_name       = "Cisco BGP peer admin status"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cbgp.peer.admin.status"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "State"
}
