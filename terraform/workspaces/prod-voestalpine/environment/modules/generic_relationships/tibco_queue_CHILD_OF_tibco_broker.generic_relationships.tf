resource "dynatrace_generic_relationships" "tibco_queue_CHILD_OF_tibco_broker" {
  enabled          = true
  created_by       = "com.dynatrace.extension.tibcoems 1.4.9"
  from_type        = "tibco:queue"
  to_type          = "tibco:broker"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      source_type = "Entities"
      mapping_rules {
        mapping_rule {
          destination_property       = "server"
          destination_transformation = "Leave text as-is"
          source_property            = "server"
          source_transformation      = "Leave text as-is"
        }
        mapping_rule {
          destination_property       = "host"
          destination_transformation = "Leave text as-is"
          source_property            = "host"
          source_transformation      = "Leave text as-is"
        }
      }
    }
  }
}
