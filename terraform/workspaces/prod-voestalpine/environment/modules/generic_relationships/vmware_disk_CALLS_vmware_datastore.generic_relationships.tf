resource "dynatrace_generic_relationships" "vmware_disk_CALLS_vmware_datastore" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.16.2"
  from_type        = "vmware:disk"
  to_type          = "vmware:datastore"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
