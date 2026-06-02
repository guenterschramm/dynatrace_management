resource "dynatrace_management_zone_v2" "Virtualization_Services" {
  name        = "Virtualization Services"
  description = "VMWare, AWS, Azure, Openshift"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "CLOUD_APPLICATION"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "KUBERNETES_CLUSTER_NAME"
            operator       = "EQUALS"
            string_value   = "2217ocp497tst01"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "CLOUD_APPLICATION_NAMESPACE"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "KUBERNETES_CLUSTER_NAME"
            operator       = "EQUALS"
            string_value   = "2217ocp497tst01"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "KUBERNETES_SERVICE"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "KUBERNETES_CLUSTER_NAME"
            operator       = "EQUALS"
            string_value   = "2217ocp497tst01"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "KUBERNETES_CLUSTER"
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "KUBERNETES_CLUSTER_NAME"
            operator       = "EQUALS"
            string_value   = "2217ocp497tst01"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(host),toRelationships.isSiteOf(type(\"VMWARE_DATACENTER\"))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(hypervisor)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(vcenter)"
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
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
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        attribute_conditions {
          condition {
            enum_value = "AWS_NITRO"
            key        = "HOST_HYPERVISOR_TYPE"
            operator   = "EQUALS"
          }
        }
      }
    }
  }
}
