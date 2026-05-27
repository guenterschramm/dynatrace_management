resource "dynatrace_generic_relationships" "vmware_cluster_CHILD_OF_vmware_datacenter" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.14.13"
  from_type        = "vmware:cluster"
  to_type          = "vmware:datacenter"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
