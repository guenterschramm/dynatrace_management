resource "dynatrace_generic_relationships" "vmware_disk_CALLS_vmware_host" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.14.13"
  from_type        = "vmware:disk"
  to_type          = "vmware:host"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
