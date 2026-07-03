resource "dynatrace_generic_relationships" "f5_pool_member_SAME_AS_process_group_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:pool:member"
  to_type          = "process_group_instance"
  type_of_relation = "SAME_AS"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "dt.ip_addresses"
          destination_transformation = "Leave text as-is"
          source_property            = "dt.ip_addresses"
          source_transformation      = "Leave text as-is"
        }
        mapping_rule {
          destination_property       = "dt.listen_ports"
          destination_transformation = "Leave text as-is"
          source_property            = "dt.listen_ports"
          source_transformation      = "Leave text as-is"
        }
      }
    }
  }
}
