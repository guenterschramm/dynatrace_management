resource "dynatrace_management_zone_v2" "VMWare_ESXi" {
  name        = "VMWare ESXi"
  description = "vCenter Monitoring"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = false
        attribute_conditions {
          condition {
            enum_value = "VMWARE"
            key        = "HOST_HYPERVISOR_TYPE"
            operator   = "EQUALS"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(vcenter)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(hypervisor)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(host),toRelationships.isSiteOf(type(\"VMWARE_DATACENTER\"))"
    }
  }
}
