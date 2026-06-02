resource "dynatrace_generic_relationships" "disk-devices_software-raid_CALLS_disk-devices_partition" {
  enabled          = true
  created_by       = "com.dynatrace.extension.disk-devices 1.0.3"
  from_type        = "disk-devices:software-raid"
  to_type          = "disk-devices:partition"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.disk-devices.software-raid)"
      source_type = "Metrics"
    }
  }
}
