resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_juniper_network_interface_SAME_AS_network_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_juniper_network_interface"
  to_type          = "network:interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.juniper.generic.if)"
      source_type = "Metrics"
    }
  }
}
