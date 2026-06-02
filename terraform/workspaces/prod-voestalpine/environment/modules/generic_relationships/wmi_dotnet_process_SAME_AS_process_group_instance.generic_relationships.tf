resource "dynatrace_generic_relationships" "wmi_dotnet_process_SAME_AS_process_group_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.wmi.dotnet 1.2.8"
  from_type        = "wmi:dotnet_process"
  to_type          = "process_group_instance"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(dotnet.memory)"
      source_type = "Metrics"
    }
  }
}
