resource "dynatrace_generic_relationships" "snmp_com_dynatrace_extension_snmp_generic_juniper_running_app_RUNS_ON_snmp_com_dynatrace_extension_snmp_generic_juniper_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  from_type        = "snmp:com_dynatrace_extension_snmp_generic_juniper_running_app"
  to_type          = "snmp:com_dynatrace_extension_snmp_generic_juniper_device"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.juniper.generic.app.running)"
      source_type = "Metrics"
    }
  }
}
