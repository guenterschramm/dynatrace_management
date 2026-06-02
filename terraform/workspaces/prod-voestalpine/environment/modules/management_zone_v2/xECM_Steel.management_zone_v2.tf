resource "dynatrace_management_zone_v2" "xECM_Steel" {
  name        = "xECM Steel"
  description = "xECM Steel - Production Environment"
  rules {
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(vcenter),fromRelationships.manages(type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"xECM_P\")))"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(HYPERVISOR),toRelationship.runsOn(type(HOST),hostGroupName(\"xECM_P\"))"
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
            value          = "xECM_P"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("python:certificate_monitor_certificate"),monitoring_config("xECM Steel SSL Certificate")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_site),fromRelationship.runson(type("HOST"),hostGroupName("xECM_P"))
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type(wmi:iis_service_instance),fromRelationship.runson(type("HOST"),hostGroupName("xECM_P"))
      EOT
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = true
        service_to_pgpropagation    = true
        attribute_conditions {
          condition {
            key      = "SERVICE_TAGS"
            operator = "EQUALS"
            tag      = "Application:xECM_Steel"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = true
        service_to_pgpropagation    = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "SERVICE_DATABASE_NAME"
            operator       = "EQUALS"
            string_value   = "TEMPOBOXP"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = true
        service_to_pgpropagation    = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "SERVICE_DATABASE_NAME"
            operator       = "EQUALS"
            string_value   = "CSSDP"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = true
        service_to_pgpropagation    = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "SERVICE_DATABASE_NAME"
            operator       = "CONTAINS"
            string_value   = "DSSP"
          }
        }
      }
    }
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
            string_value   = "xECM Steel"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = false
      attribute_rule {
        entity_type = "BROWSER_MONITOR"
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "BROWSER_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "xECM Steel"
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
            string_value   = "2236DBXECMP01"
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
            case_sensitive = false
            key            = "WEB_APPLICATION_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "xECM Steel"
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
            case_sensitive = true
            key            = "SERVICE_DETECTED_NAME"
            operator       = "EQUALS"
            string_value   = "Requests to unmonitored hosts"
          }
          condition {
            enum_value = "EXTERNAL_SERVICE"
            key        = "SERVICE_TOPOLOGY"
            operator   = "EQUALS"
          }
          condition {
            enum_value = "WEB_REQUEST_SERVICE"
            key        = "SERVICE_TYPE"
            operator   = "EQUALS"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "QUEUE"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "QUEUE_VENDOR"
            operator       = "EQUALS"
            string_value   = "ActiveMQ"
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
            entity_id = "HOST_GROUP-C345CA5D0D760424"
            key       = "HOST_GROUP_ID"
            operator  = "EQUALS"
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
            entity_id = "HOST_GROUP-C345CA5D0D760424"
            key       = "HOST_GROUP_ID"
            operator  = "EQUALS"
          }
        }
      }
    }
  }
}
