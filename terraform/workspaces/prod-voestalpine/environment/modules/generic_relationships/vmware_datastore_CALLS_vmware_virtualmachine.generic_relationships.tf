resource "dynatrace_generic_relationships" "vmware_datastore_CALLS_vmware_virtualmachine" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.14.13"
  from_type        = "vmware:datastore"
  to_type          = "vmware:virtualmachine"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
