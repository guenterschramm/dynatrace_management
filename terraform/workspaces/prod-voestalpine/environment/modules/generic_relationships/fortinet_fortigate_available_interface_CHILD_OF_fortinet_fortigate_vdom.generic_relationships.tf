resource "dynatrace_generic_relationships" "fortinet_fortigate_available_interface_CHILD_OF_fortinet_fortigate_vdom" {
  enabled          = true
  created_by       = "com.dynatrace.extension.fortigate 2.0.2"
  from_type        = "fortinet:fortigate_available_interface"
  to_type          = "fortinet:fortigate_vdom"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(fortigate)"
      source_type = "Metrics"
    }
  }
}
