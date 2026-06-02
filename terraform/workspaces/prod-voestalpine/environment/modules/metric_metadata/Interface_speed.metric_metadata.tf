resource "dynatrace_metric_metadata" "Interface_speed" {
  description        = "Speed of the network interface in MegaBits per second."
  display_name       = "Interface speed"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.if.highspeed"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"
  unit               = "MegaBitPerSecond"
}
