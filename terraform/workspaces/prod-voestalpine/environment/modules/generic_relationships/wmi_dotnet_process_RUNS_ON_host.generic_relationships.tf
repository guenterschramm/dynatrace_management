resource "dynatrace_generic_relationships" "wmi_dotnet_process_RUNS_ON_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.wmi.dotnet 1.2.8"
  from_type        = "wmi:dotnet_process"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(dotnet)"
      source_type = "Metrics"
    }
  }
}
