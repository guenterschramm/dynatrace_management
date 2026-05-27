resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_juniper_installed_app_PART_OF_snmp_com_dynatrace_extension_snmp_generic_juniper_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_juniper_installed_app"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_juniper_device"
  type_of_relation = "PART_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.juniper.generic.app.installed.entity)"
      source_type = "Metrics"
    }
  }
}
