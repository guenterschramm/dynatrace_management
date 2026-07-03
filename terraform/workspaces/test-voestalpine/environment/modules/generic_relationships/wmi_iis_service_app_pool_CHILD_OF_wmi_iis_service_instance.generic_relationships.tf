resource "dynatrace_generic_relationships" "wmi_iis_service_app_pool_CHILD_OF_wmi_iis_service_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.wmi.iis 2.0.1"
  from_type        = "wmi:iis_service_app_pool"
  to_type          = "wmi:iis_service_instance"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(iis)"
      source_type = "Metrics"
    }
  }
}
