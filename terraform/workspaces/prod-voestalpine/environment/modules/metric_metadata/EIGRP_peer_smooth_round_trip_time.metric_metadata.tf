resource "dynatrace_metric_metadata" "EIGRP_peer_smooth_round_trip_time" {
  description        = "The computed smooth round trip time for packets to and from the peer (milliseconds). CISCO-EIGRP-MIB."
  display_name       = "EIGRP peer smooth round trip time"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.eigrp.peer.srtt"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "MilliSecond"
}
