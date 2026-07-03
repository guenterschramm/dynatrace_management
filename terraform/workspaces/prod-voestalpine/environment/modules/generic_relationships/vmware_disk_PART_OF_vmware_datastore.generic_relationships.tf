resource "dynatrace_generic_relationships" "vmware_disk_PART_OF_vmware_datastore" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.16.2"
  from_type        = "vmware:disk"
  to_type          = "vmware:datastore"
  type_of_relation = "PART_OF"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
