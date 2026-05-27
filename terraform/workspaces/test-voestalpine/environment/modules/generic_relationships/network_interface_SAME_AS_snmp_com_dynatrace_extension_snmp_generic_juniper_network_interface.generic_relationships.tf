resource "dynatrace_generic_relationships" "network_interface_SAME_AS_snmp_com_dynatrace_extension_snmp_generic_juniper_network_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  from_type        = "network:interface"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_juniper_network_interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.juniper.generic.if)"
      source_type = "Metrics"
    }
  }
}
