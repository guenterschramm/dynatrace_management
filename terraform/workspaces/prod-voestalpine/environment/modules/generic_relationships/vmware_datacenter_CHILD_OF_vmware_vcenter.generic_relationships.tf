resource "dynatrace_generic_relationships" "vmware_datacenter_CHILD_OF_vmware_vcenter" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.14.13"
  from_type        = "vmware:datacenter"
  to_type          = "vmware:vcenter"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
