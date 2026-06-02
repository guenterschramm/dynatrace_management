resource "dynatrace_autotag_v2" "VMWare" {
  name                          = "VMWare"
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
