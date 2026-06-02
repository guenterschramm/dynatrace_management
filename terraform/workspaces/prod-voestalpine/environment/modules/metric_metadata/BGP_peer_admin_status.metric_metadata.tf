resource "dynatrace_metric_metadata" "BGP_peer_admin_status" {
  description        = "The desired state of the BGP connection. stop(1), start(2). BGP4-MIB."
  display_name       = "BGP peer admin status"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.bgp4.peer.admin.status"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "State"
}
