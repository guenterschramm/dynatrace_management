resource "dynatrace_metric_metadata" "OSPF_neighbor_state" {
  description        = "The state of the relationship with this neighbor. down (1), attempt (2), init (3), twoWay (4), exchangeStart (5), exchange (6), loading (7), full (8). OSPF-MIB."
  display_name       = "OSPF neighbor state"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.ospf.nbr.state"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
