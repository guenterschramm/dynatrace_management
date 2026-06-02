resource "dynatrace_management_zone_v2" "xECM_Corporate" {
  name        = "xECM Corporate"
  description = "xECM Corporate - Production Environment"
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
            string_value   = "xECM Corporate"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = false
        service_to_pgpropagation    = false
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "SERVICE_DATABASE_NAME"
            operator       = "EQUALS"
            string_value   = "CSKOP"
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
            string_value   = "xECM Corporate"
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
            case_sensitive = true
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "xECM_Corp"
          }
        }
      }
    }
    rule {
      type    = "DIMENSION"
      enabled = true
      dimension_rule {
        applies_to = "METRIC"
        dimension_conditions {
          condition {
            condition_type = "DIMENSION"
            key            = "dt.host_group.id"
            rule_matcher   = "BEGINS_WITH"
            value          = "xECM_Corp"
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
            value          = "xECM_Corp"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = false
        service_to_pgpropagation    = false
        attribute_conditions {
          condition {
            enum_value = "WEB_REQUEST_SERVICE"
            key        = "SERVICE_TYPE"
            operator   = "EQUALS"
          }
          condition {
            enum_value = "EXTERNAL_SERVICE"
            key        = "SERVICE_TOPOLOGY"
            operator   = "EQUALS"
          }
          condition {
            case_sensitive = true
            key            = "SERVICE_DETECTED_NAME"
            operator       = "EQUALS"
            string_value   = "Requests to unmonitored hosts"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_site),fromRelationship.runson(type("HOST"),hostGroupName("xECM_Corp"))
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_instance),fromRelationship.runson(type("HOST"),hostGroupName("xECM_Corp"))
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(vcenter),fromRelationships.manages(type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"xECM_Corp\")))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"xECM_Corp\"))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("python:certificate_monitor_certificate"),monitoring_config("xECM Corporate SSL Certificate")
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
            string_value   = "xECM_Corp"
          }
        }
      }
    }
  }
}
