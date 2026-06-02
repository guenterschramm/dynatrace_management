resource "dynatrace_generic_relationships" "vmware_virtualmachine_RUNS_ON_vmware_host" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.14.13"
  from_type        = "vmware:virtualmachine"
  to_type          = "vmware:host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
