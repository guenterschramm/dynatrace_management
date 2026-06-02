resource "dynatrace_generic_relationships" "disk-devices_volume_CALLS_disk-devices_partition" {
  enabled          = true
  created_by       = "com.dynatrace.extension.disk-devices 1.0.3"
  from_type        = "disk-devices:volume"
  to_type          = "disk-devices:partition"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.disk-devices.volume)"
      source_type = "Metrics"
    }
  }
}
