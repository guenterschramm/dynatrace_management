resource "dynatrace_autotag_v2" "Application" {
  name                          = "Application"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "Webhosting"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "HTTP_CHECK"
        conditions {
          condition {
            case_sensitive = true
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "Webhosting"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "PCD_Portal"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "HTTP_CHECK"
        conditions {
          condition {
            case_sensitive = false
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "PCD Portal"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "PW_Portal"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "HTTP_CHECK"
        conditions {
          condition {
            case_sensitive = false
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "PW Portal"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "PAM"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "HTTP_CHECK"
        conditions {
          condition {
            case_sensitive = false
            key            = "HTTP_MONITOR_NAME"
            operator       = "CONTAINS"
            string_value   = "PAM"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "xECM Steel"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "HTTP_CHECK"
        conditions {
          condition {
            case_sensitive = true
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "xECM Steel"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "xECM Corporate"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "HTTP_CHECK"
        conditions {
          condition {
            case_sensitive = true
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "xECM Corporate"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "xECM Corporate"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
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
      type                = "ME"
      enabled             = true
      value_format        = "xECM Corp"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            case_sensitive = false
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "xECM_Corp"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "PW_Portal"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "EQUALS"
            string_value   = "PW Portal"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "PCD_Portal"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "EQUALS"
            string_value   = "PCD Portal"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "Webhosting"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "Webhosting"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "Webhosting"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            case_sensitive = true
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "Webhosting"
          }
        }
      }
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     = "type(host),toRelationships.isSiteOf(type(\"VMWARE_DATACENTER\"))"
      value_format        = "Virtualization Services"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "Virtualization Services"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = false
        conditions {
          condition {
            enum_value = "AWS_NITRO"
            key        = "HOST_HYPERVISOR_TYPE"
            operator   = "EQUALS"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "Virtualization Services"
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
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     = "type(hypervisor)"
      value_format        = "Virtualization Services"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "PAM"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "PAM"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "xECM Steel"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
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
      type                = "ME"
      enabled             = true
      value_format        = "Bee4IT"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
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
      type                = "ME"
      enabled             = true
      value_format        = "Database"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            key      = "HOST_TAGS"
            operator = "EQUALS"
            tag      = "Application:SQL Server"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "Bee4IT"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
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
      type                = "ME"
      enabled             = true
      value_format        = "xECM Steel"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            case_sensitive = false
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "xECM_P"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "PAM"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            case_sensitive = true
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "PAM"
          }
        }
      }
    }
  }
}
