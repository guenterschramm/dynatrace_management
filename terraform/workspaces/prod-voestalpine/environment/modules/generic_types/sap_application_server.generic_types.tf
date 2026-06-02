resource "dynatrace_generic_types" "sap_application_server" {
  name         = "sap:application_server"
  enabled      = true
  created_by   = "com.dynatrace.ext.sap 1.7.4"
  display_name = "SAP Application Server"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDJhMzc3N2ZkLTYwZWEtNTZmZC1iM2NlLWIzNmExM2E0NTM3Zb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "sap"
      id_pattern            = "sap_as_{sid}_{host}_{instance_number}"
      instance_name_pattern = "SAP - {sid} - {host} ({instance_number})"
      attributes {
        attribute {
          display_name = "Custom App ID"
          key          = "custom_app"
          pattern      = "{custom_app}"
        }
        attribute {
          display_name = "IP Address"
          key          = "dt.ip_addresses"
          pattern      = "{dt.ip_addresses}"
        }
        attribute {
          display_name = "Ports"
          key          = "dt.listen_ports"
          pattern      = "{dt.listen_ports}"
        }
        attribute {
          display_name = "Ports"
          key          = "listen_ports"
          pattern      = "{dt.listen_ports}"
        }
        attribute {
          display_name = "ABAP System"
          key          = "sid"
          pattern      = "{sid}"
        }
        attribute {
          display_name = "Host Name"
          key          = "host"
          pattern      = "{host}"
        }
        attribute {
          display_name = "Instance ID"
          key          = "instance_id"
          pattern      = "{instance_number}"
        }
        attribute {
          display_name = "Plugin Version"
          key          = "plugin_version"
          pattern      = "{version}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(sap.customApplication)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "sap"
      id_pattern            = "sap_as_{sid}_{host}_{instance_number}"
      instance_name_pattern = "SAP - {sid} - {host} ({instance_number})"
      attributes {
        attribute {
          display_name = "IP Address"
          key          = "dt.ip_addresses"
          pattern      = "{dt.ip_addresses}"
        }
        attribute {
          display_name = "Ports"
          key          = "dt.listen_ports"
          pattern      = "{dt.listen_ports}"
        }
        attribute {
          display_name = "Ports"
          key          = "listen_ports"
          pattern      = "{dt.listen_ports}"
        }
        attribute {
          display_name = "ABAP System"
          key          = "sid"
          pattern      = "{sid}"
        }
        attribute {
          display_name = "Host Name"
          key          = "host"
          pattern      = "{host}"
        }
        attribute {
          display_name = "Instance ID"
          key          = "instance_id"
          pattern      = "{instance_number}"
        }
        attribute {
          display_name = "Plugin Version"
          key          = "plugin_version"
          pattern      = "{version}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(sap.)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
