resource "dynatrace_generic_relationships" "disk-devices_disk_CHILD_OF_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.disk-devices 1.0.3"
  from_type        = "disk-devices:disk"
  to_type          = "host"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.disk-devices.disk)"
      source_type = "Metrics"
    }
  }
}
