resource "dynatrace_management_zone_v2" "PAM-Privileged_Access_Management" {
  name        = "PAM - Privileged Access Management"
  description = "Privileged Access Management"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "HTTP_MONITOR"
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "PAM"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(vcenter),fromRelationships.manages(type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"pam\")))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"pam\"))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("python:certificate_monitor_certificate"),monitoring_config("PAM SSL Certificate")
      EOT
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
            value          = "PAM"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_site),fromRelationship.runson(type("HOST"),hostGroupName("pam"))
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_instance),fromRelationship.runson(type("HOST"),hostGroupName("pam"))
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
            case_sensitive = true
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "PAM"
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
            string_value   = "PAM - Privileged Access Management"
          }
        }
      }
    }
  }
}
