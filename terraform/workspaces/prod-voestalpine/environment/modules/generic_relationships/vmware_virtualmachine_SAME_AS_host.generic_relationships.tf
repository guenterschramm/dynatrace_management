resource "dynatrace_generic_relationships" "vmware_virtualmachine_SAME_AS_host" {
  enabled          = true
  created_by       = "com.dynatrace.vmware-integration 3.14.13"
  from_type        = "vmware:virtualmachine"
  to_type          = "host"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "detectedName"
          destination_transformation = "To lower case"
          source_property            = "vm_dns_name"
          source_transformation      = "To lower case"
        }
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "To lower case"
          source_property            = "vm_ip_address"
          source_transformation      = "To lower case"
        }
      }
    }
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "detectedName"
          destination_transformation = "To lower case"
          source_property            = "vm_name"
          source_transformation      = "To lower case"
        }
      }
    }
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "To lower case"
          source_property            = "vm_ip_address"
          source_transformation      = "To lower case"
        }
      }
    }
  }
}
