resource "dynatrace_generic_relationships" "vmware_host_RUNS_ON_vmware_cluster" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.16.2"
  from_type        = "vmware:host"
  to_type          = "vmware:cluster"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(vmware.)"
      source_type = "Metrics"
    }
  }
}
