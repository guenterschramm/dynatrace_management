resource "dynatrace_generic_types" "f5_gtm_virtualserver" {
  name         = "f5:gtm:virtualserver"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "DNS Virtual Server"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGEwMmFiNTZmLTM4ZTctNThmNC04ODdhLWI1ZDkwODczNTkwMr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "loadbalancer"
      id_pattern            = "f5_gtm_virtualserver_{virtualserver.name}_{server.name}"
      instance_name_pattern = "{server.name} ({virtualserver.name})"
      role                  = "default"
      attributes {
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{virtualserver.addr}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{virtualserver.name}"
        }
        attribute {
          key     = "Name"
          pattern = "{virtualserver.name}"
        }
        attribute {
          key     = "ServerName"
          pattern = "{server.name}"
        }
        attribute {
          key     = "Enabled"
          pattern = "{vs.enabled}"
        }
        attribute {
          key     = "State"
          pattern = "{vs.available}"
        }
        attribute {
          key     = "StateDetail"
          pattern = "{vs.state_detail}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "virtualserver.name"
        }
        required_dimension {
          key = "server.name"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.f5.bigip.gtm.virtualserver.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "loadbalancer"
      id_pattern            = "f5_gtm_virtualserver_{virtualserver.name}_{server.name}"
      instance_name_pattern = "{server.name} ({virtualserver.name})"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "server.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "virtualserver.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.pool_member.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.virtualserver.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
