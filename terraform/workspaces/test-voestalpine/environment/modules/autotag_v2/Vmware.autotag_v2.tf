resource "dynatrace_autotag_v2" "Vmware" {
  name                          = "Vmware"
  description                   = "VMWare Hosts"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ESXIHost:Name}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = false
        conditions {
          condition {
            enum_value = "VMWARE"
            key        = "HOST_HYPERVISOR_TYPE"
            operator   = "EQUALS"
          }
        }
      }
    }
  }
}
