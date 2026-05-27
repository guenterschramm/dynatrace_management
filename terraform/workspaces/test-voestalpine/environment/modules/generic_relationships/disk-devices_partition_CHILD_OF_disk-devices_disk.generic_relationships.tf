resource "dynatrace_generic_relationships" "disk-devices_partition_CHILD_OF_disk-devices_disk" {
  enabled          = true
  created_by       = "com.dynatrace.extension.disk-devices 1.0.3"
  from_type        = "disk-devices:partition"
  to_type          = "disk-devices:disk"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.disk-devices.partition)"
      source_type = "Metrics"
    }
  }
}
