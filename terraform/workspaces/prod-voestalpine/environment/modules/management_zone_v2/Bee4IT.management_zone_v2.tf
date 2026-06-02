resource "dynatrace_management_zone_v2" "Bee4IT" {
  name = "Bee4IT"
  rules {
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(vcenter),fromRelationships.manages(type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"bee4it\")))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"bee4it\"))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("python:certificate_monitor_certificate"),monitoring_config("Bee4IT SSL Certificate")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_site),fromRelationship.runson(type("HOST"),hostGroupName("bee4it"))
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_instance),fromRelationship.runson(type("HOST"),hostGroupName("bee4it"))
      EOT
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            key      = "HOST_TAGS"
            operator = "EQUALS"
            tag      = "Cluster:SQL2019"
          }
        }
      }
    }
    rule {
      type    = "DIMENSION"
      enabled = true
      dimension_rule {
        applies_to = "LOG"
        dimension_conditions {
          condition {
            condition_type = "DIMENSION"
            key            = "dt.host_group.id"
            rule_matcher   = "BEGINS_WITH"
            value          = "Bee4IT"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "Bee4IT"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "WEB_APPLICATION"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "EQUALS"
            string_value   = "Bee4IT"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "CUSTOM_DEVICE"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "CUSTOM_DEVICE_NAME"
            operator       = "CONTAINS"
            string_value   = "2217DBSQLBEE4IT"
          }
        }
      }
    }
  }
}
